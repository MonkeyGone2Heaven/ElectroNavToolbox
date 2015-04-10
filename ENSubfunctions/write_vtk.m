% Save Face/Vertex data as VTK format file
% From Chris Rorden's MATcro.m: 
% http://www.mccauslandcenter.sc.edu/CRNL/tools/surface-rendering-with-matlab

function write_vtk(vertex,face,filename)
[nF nFd] =size(face);
[nV nVd] =size(vertex);
if (nF <1) || (nV <3 || (nFd ~=3) || (nVd ~=3)), warning('Problem with writeVtk'); return; end; 
fid = fopen(filename, 'wt');
fprintf(fid, '# vtk DataFile Version 3.0\n');
fprintf(fid, 'Comment: created with MATcro\n');
fprintf(fid, 'ASCII\n');
fprintf(fid, 'DATASET POLYDATA\n');
fprintf(fid, 'POINTS %d float\n',nV);
fprintf(fid, '%.12g %.12g %.12g\n', vertex');
fprintf(fid, 'POLYGONS %d %d\n',nF, nF*(nFd+1));
fprintf(fid, '3 %d %d %d\n', (face-1)');
fclose(fid);
%end save_vtkSub()
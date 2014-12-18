
% Create the onnectivity graph of the Buckminster Fuller geodesic dome
[B, V] = bucky;
H = sparse(60, 60);
k = 31:60;
H(k, k) = B(k, k);

% Visualize the graph using the gplot function (blue)
fig = figure;
gplot(B - H, V, 'b-');
hold on;

% Visualize a rotation of the graph (red)
gplot(H, V, 'r-');
axis off equal;

% PLOTLY 
response = fig2plotly(fig, 'filename', 'matlab_graph_plot');
plotly_url = response.url;
outputDir = [getenv('MYDIR') '/ClusterWorkshop/Results/MultiSubjectICA/subject_' num2str(getenv('SLURM_ARRAY_TASK_ID') + 1)];
prefix = ['clusterworkshop_fbirn_' num2str(getenv('SLURM_ARRAY_TASK_ID') + 1)];
refFiles = {'/trdapps/linux-x86_64/matlab/toolboxes/GroupICAT/GroupICAT/icatb/icatb_templates/Neuromark_fMRI_1.0.nii'};

parallel_info.mode = 'serial';
parallel_info.num_workers = 31;

modalityType = 'fMRI';
dataSelectionMethod = 4;
numOfSess = 1;
dummy_scans = 0;
keyword_designMatrix = 'no';
input_design_matrices = {};
group_ica_type = 'spatial';
algoType = 16;
which_analysis = 2;
icasso_opts.sel_mode = 'randinit';  
icasso_opts.num_ica_runs = 10; 
icasso_opts.min_cluster_size = 8; 
icasso_opts.max_cluster_size = 10; 
preproc_type = 4;
%maskFile = '';
pcaType = 1;
pca_opts.stack_data = 'yes';
pca_opts.precision = 'double';
pca_opts.tolerance = 1e-4;
pca_opts.max_iter = 1000;
group_pca_type = 'subject specific';
backReconType = 5;
scaleType = 2;
numReductionSteps = 2;
doEstimation = 0; 
estimation_opts.PC1 = 'max';
estimation_opts.PC2 = 'mean';
numOfPC1 = 120;
numOfPC2 = 100;
perfType = 3;


input_data_file_patterns = cellstr(readlines([getenv('MYDIR') '/ClusterWorkshop/Examples/fbirn_subject_list.txt']));
input_data_file_patterns = input_data_file_patterns{getenv('SLURM_ARRAY_TASK_ID') + 1};

display_results.formatName = 'html'; 
display_results.convert_to_zscores = 'yes';
display_results.threshold = 1.0;
display_results.image_values = 'positive and negative';
display_results.slice_plane = 'axial';
display_results.network_summary_opts.comp_network_names = {'SC', (1:5); 'AU', (6:7); 'SM', (8:16); 'VI', (17:25); 'CC', (25:42); 'DM', (43:49), 'CB', (50:52)};
display_results.network_summary_opts.image_values = display_results.image_values;
display_results.network_summary_opts.threshold = display_results.threshold;
display_results.network_summary_opts.convert_to_z = display_results.convert_to_zscores;

function sl_postprocess(h)
  % Test the documentation attachement mechanism
  disp('Linking documentation...');
  blkList = get_param(h, 'Blocks'); 
  
  
  docList = {'web("Libraries/Doc/AbsoluteReference.html")', ...
             'web("Libraries/Doc/BasicCompressor.html")', ...
             'web("Libraries/Doc/Cap.html")', ...
             'web("Libraries/Doc/Chamber.html")', ...
             'web("Libraries/Doc/FlowResistance.html")',...
             'web("Libraries/Doc/IdealGasProperties.html")',...
             'web("Libraries/Doc/InfiniteResistance.html")',...
             'web("Libraries/Doc/LocalRestriction.html")',...
             'web("Libraries/Doc/MassFlowSensor.html")',...
             'web("Libraries/Doc/MassFlowSource.html")',...
             'web("Libraries/Doc/Pipe.html")',...
             'web("Libraries/Doc/PressureSource.html")',...
             'web("Libraries/Doc/PressTempSensor.html")',...
             'web("Libraries/Doc/Reservoir.html")',...
             'web("Libraries/Doc/SpeciesFracs.html")',...
             'web("Libraries/Doc/ThermoPropSensor.html")',...
             'web("Libraries/Doc/VariableVolumeCylinder.html")',...
             'web("Libraries/Doc/VolumetricFlowSensor.html")',...
             'web("Libraries/Doc/VolumetricFlowSource.html")'
  };
  
  for k = 1:numel(docList)         
    blk = find_system(h, 'Name', blkList{k});
    set_param(blk, 'MaskHelp', docList{k});
  end

  disp('Done');
end
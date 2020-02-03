#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool

id: samtools-depth-v1.9
label: samtools-depth-v1.9

requirements:
    InlineJavascriptRequirement: {}
    DockerRequirement:
        dockerPull: quay.io/biocontainers/samtools:1.9--h10a08f8_12


baseCommand: [ samtools, depth ]

inputs:
  bam:
    type: File
    doc: Input BAM file

arguments:
   - $(inputs.bam)


stdout: $(inputs.bam.nameroot).depth.txt
# stderr: samtools.log 

outputs:
  - id: depth
    type: stdout


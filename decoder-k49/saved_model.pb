иЎ
тх
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
Й
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕ
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718иц
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	bђ*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	bђ*
dtype0
q
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:ђ*
dtype0
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђљ*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
ђљ*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:љ*
dtype0

NoOpNoOp
ъ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*┘
value¤B╠ B┼
й
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
regularization_losses
	variables
trainable_variables
	keras_api

signatures
 
h

	kernel

bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
 

	0

1
2
3

	0

1
2
3
Г

layers
metrics
regularization_losses
	variables
layer_metrics
trainable_variables
layer_regularization_losses
non_trainable_variables
 
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

	0

1

	0

1
Г

layers
metrics
regularization_losses
layer_metrics
	variables
trainable_variables
non_trainable_variables
layer_regularization_losses
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
Г

layers
 metrics
regularization_losses
!layer_metrics
	variables
trainable_variables
"non_trainable_variables
#layer_regularization_losses

0
1
2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
z
serving_default_input_3Placeholder*'
_output_shapes
:         b*
dtype0*
shape:         b
З
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3dense_3/kerneldense_3/biasdense_4/kerneldense_4/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference_signature_wrapper_803
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
е
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpConst*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *%
f R
__inference__traced_save_928
М
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/biasdense_4/kerneldense_4/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference__traced_restore_950џє
в
Я
%__inference_model_2_layer_call_fn_677
input_3!
dense_3_kernel:	bђ
dense_3_bias:	ђ"
dense_4_kernel:
ђљ
dense_4_bias:	љ
identityѕбStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinput_3dense_3_kerneldense_3_biasdense_4_kerneldense_4_bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_model_2_layer_call_and_return_conditional_losses_6702
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         b: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         b
!
_user_specified_name	input_3
╗
─
@__inference_model_2_layer_call_and_return_conditional_losses_736

inputs)
dense_3_dense_3_kernel:	bђ#
dense_3_dense_3_bias:	ђ*
dense_4_dense_4_kernel:
ђљ#
dense_4_dense_4_bias:	љ
identityѕбdense_3/StatefulPartitionedCallбdense_4/StatefulPartitionedCallЏ
dense_3/StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_dense_3_kerneldense_3_dense_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_3_layer_call_and_return_conditional_losses_6502!
dense_3/StatefulPartitionedCallй
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_dense_4_kerneldense_4_dense_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_4_layer_call_and_return_conditional_losses_6652!
dense_4/StatefulPartitionedCall┴
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         b: : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:O K
'
_output_shapes
:         b
 
_user_specified_nameinputs
ћ
┼
@__inference_model_2_layer_call_and_return_conditional_losses_792
input_3)
dense_3_dense_3_kernel:	bђ#
dense_3_dense_3_bias:	ђ*
dense_4_dense_4_kernel:
ђљ#
dense_4_dense_4_bias:	љ
identityѕбdense_3/StatefulPartitionedCallбdense_4/StatefulPartitionedCallю
dense_3/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_3_dense_3_kerneldense_3_dense_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_3_layer_call_and_return_conditional_losses_6502!
dense_3/StatefulPartitionedCallй
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_dense_4_kerneldense_4_dense_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_4_layer_call_and_return_conditional_losses_6652!
dense_4/StatefulPartitionedCall┴
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         b: : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:P L
'
_output_shapes
:         b
!
_user_specified_name	input_3
Ђ
ъ
%__inference_dense_3_layer_call_fn_875

inputs!
dense_3_kernel:	bђ
dense_3_bias:	ђ
identityѕбStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_kerneldense_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_3_layer_call_and_return_conditional_losses_6502
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0**
_input_shapes
:         b: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         b
 
_user_specified_nameinputs
в
Я
%__inference_model_2_layer_call_fn_772
input_3!
dense_3_kernel:	bђ
dense_3_bias:	ђ"
dense_4_kernel:
ђљ
dense_4_bias:	љ
identityѕбStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinput_3dense_3_kerneldense_3_biasdense_4_kerneldense_4_bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_model_2_layer_call_and_return_conditional_losses_7362
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         b: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         b
!
_user_specified_name	input_3
─

§
@__inference_dense_3_layer_call_and_return_conditional_losses_650

inputs7
$matmul_readvariableop_dense_3_kernel:	bђ2
#biasadd_readvariableop_dense_3_bias:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpћ
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_3_kernel*
_output_shapes
:	bђ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
MatMulЉ
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_3_bias*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
Reluў
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         b: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         b
 
_user_specified_nameinputs
а

■
@__inference_dense_4_layer_call_and_return_conditional_losses_886

inputs8
$matmul_readvariableop_dense_4_kernel:
ђљ2
#biasadd_readvariableop_dense_4_bias:	љ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЋ
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_4_kernel* 
_output_shapes
:
ђљ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ2
MatMulЉ
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_4_bias*
_output_shapes	
:љ*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:         љ2	
SigmoidЉ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ё
Ъ
%__inference_dense_4_layer_call_fn_893

inputs"
dense_4_kernel:
ђљ
dense_4_bias:	љ
identityѕбStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_kerneldense_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_4_layer_call_and_return_conditional_losses_6652
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
у
Р
__inference__traced_restore_950
file_prefix2
assignvariableop_dense_3_kernel:	bђ.
assignvariableop_1_dense_3_bias:	ђ5
!assignvariableop_2_dense_4_kernel:
ђљ.
assignvariableop_3_dense_4_bias:	љ

identity_5ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_2бAssignVariableOp_3Ѓ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ј
valueЁBѓB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesў
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
RestoreV2/shape_and_slices─
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityъ
AssignVariableOpAssignVariableOpassignvariableop_dense_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1ц
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2д
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3ц
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp║

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_4г

Identity_5IdentityIdentity_4:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3*
T0*
_output_shapes
: 2

Identity_5"!

identity_5Identity_5:output:0*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_3:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ћ
┼
@__inference_model_2_layer_call_and_return_conditional_losses_782
input_3)
dense_3_dense_3_kernel:	bђ#
dense_3_dense_3_bias:	ђ*
dense_4_dense_4_kernel:
ђљ#
dense_4_dense_4_bias:	љ
identityѕбdense_3/StatefulPartitionedCallбdense_4/StatefulPartitionedCallю
dense_3/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_3_dense_3_kerneldense_3_dense_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_3_layer_call_and_return_conditional_losses_6502!
dense_3/StatefulPartitionedCallй
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_dense_4_kerneldense_4_dense_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_4_layer_call_and_return_conditional_losses_6652!
dense_4/StatefulPartitionedCall┴
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         b: : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:P L
'
_output_shapes
:         b
!
_user_specified_name	input_3
┼
▄
!__inference_signature_wrapper_803
input_3!
dense_3_kernel:	bђ
dense_3_bias:	ђ"
dense_4_kernel:
ђљ
dense_4_bias:	љ
identityѕбStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinput_3dense_3_kerneldense_3_biasdense_4_kerneldense_4_bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference__wrapped_model_6322
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         b: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         b
!
_user_specified_name	input_3
њ
▄
@__inference_model_2_layer_call_and_return_conditional_losses_821

inputs?
,dense_3_matmul_readvariableop_dense_3_kernel:	bђ:
+dense_3_biasadd_readvariableop_dense_3_bias:	ђ@
,dense_4_matmul_readvariableop_dense_4_kernel:
ђљ:
+dense_4_biasadd_readvariableop_dense_4_bias:	љ
identityѕбdense_3/BiasAdd/ReadVariableOpбdense_3/MatMul/ReadVariableOpбdense_4/BiasAdd/ReadVariableOpбdense_4/MatMul/ReadVariableOpг
dense_3/MatMul/ReadVariableOpReadVariableOp,dense_3_matmul_readvariableop_dense_3_kernel*
_output_shapes
:	bђ*
dtype02
dense_3/MatMul/ReadVariableOpї
dense_3/MatMulMatMulinputs%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_3/MatMulЕ
dense_3/BiasAdd/ReadVariableOpReadVariableOp+dense_3_biasadd_readvariableop_dense_3_bias*
_output_shapes	
:ђ*
dtype02 
dense_3/BiasAdd/ReadVariableOpб
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_3/BiasAddq
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
dense_3/ReluГ
dense_4/MatMul/ReadVariableOpReadVariableOp,dense_4_matmul_readvariableop_dense_4_kernel* 
_output_shapes
:
ђљ*
dtype02
dense_4/MatMul/ReadVariableOpа
dense_4/MatMulMatMuldense_3/Relu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ2
dense_4/MatMulЕ
dense_4/BiasAdd/ReadVariableOpReadVariableOp+dense_4_biasadd_readvariableop_dense_4_bias*
_output_shapes	
:љ*
dtype02 
dense_4/BiasAdd/ReadVariableOpб
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ2
dense_4/BiasAddz
dense_4/SigmoidSigmoiddense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         љ2
dense_4/SigmoidЖ
IdentityIdentitydense_4/Sigmoid:y:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         b: : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:O K
'
_output_shapes
:         b
 
_user_specified_nameinputs
У
▀
%__inference_model_2_layer_call_fn_848

inputs!
dense_3_kernel:	bђ
dense_3_bias:	ђ"
dense_4_kernel:
ђљ
dense_4_bias:	љ
identityѕбStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_kerneldense_3_biasdense_4_kerneldense_4_bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_model_2_layer_call_and_return_conditional_losses_6702
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         b: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         b
 
_user_specified_nameinputs
Ц
ч
__inference__wrapped_model_632
input_3G
4model_2_dense_3_matmul_readvariableop_dense_3_kernel:	bђB
3model_2_dense_3_biasadd_readvariableop_dense_3_bias:	ђH
4model_2_dense_4_matmul_readvariableop_dense_4_kernel:
ђљB
3model_2_dense_4_biasadd_readvariableop_dense_4_bias:	љ
identityѕб&model_2/dense_3/BiasAdd/ReadVariableOpб%model_2/dense_3/MatMul/ReadVariableOpб&model_2/dense_4/BiasAdd/ReadVariableOpб%model_2/dense_4/MatMul/ReadVariableOp─
%model_2/dense_3/MatMul/ReadVariableOpReadVariableOp4model_2_dense_3_matmul_readvariableop_dense_3_kernel*
_output_shapes
:	bђ*
dtype02'
%model_2/dense_3/MatMul/ReadVariableOpЦ
model_2/dense_3/MatMulMatMulinput_3-model_2/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
model_2/dense_3/MatMul┴
&model_2/dense_3/BiasAdd/ReadVariableOpReadVariableOp3model_2_dense_3_biasadd_readvariableop_dense_3_bias*
_output_shapes	
:ђ*
dtype02(
&model_2/dense_3/BiasAdd/ReadVariableOp┬
model_2/dense_3/BiasAddBiasAdd model_2/dense_3/MatMul:product:0.model_2/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
model_2/dense_3/BiasAddЅ
model_2/dense_3/ReluRelu model_2/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
model_2/dense_3/Relu┼
%model_2/dense_4/MatMul/ReadVariableOpReadVariableOp4model_2_dense_4_matmul_readvariableop_dense_4_kernel* 
_output_shapes
:
ђљ*
dtype02'
%model_2/dense_4/MatMul/ReadVariableOp└
model_2/dense_4/MatMulMatMul"model_2/dense_3/Relu:activations:0-model_2/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ2
model_2/dense_4/MatMul┴
&model_2/dense_4/BiasAdd/ReadVariableOpReadVariableOp3model_2_dense_4_biasadd_readvariableop_dense_4_bias*
_output_shapes	
:љ*
dtype02(
&model_2/dense_4/BiasAdd/ReadVariableOp┬
model_2/dense_4/BiasAddBiasAdd model_2/dense_4/MatMul:product:0.model_2/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ2
model_2/dense_4/BiasAddњ
model_2/dense_4/SigmoidSigmoid model_2/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         љ2
model_2/dense_4/Sigmoidњ
IdentityIdentitymodel_2/dense_4/Sigmoid:y:0'^model_2/dense_3/BiasAdd/ReadVariableOp&^model_2/dense_3/MatMul/ReadVariableOp'^model_2/dense_4/BiasAdd/ReadVariableOp&^model_2/dense_4/MatMul/ReadVariableOp*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         b: : : : 2P
&model_2/dense_3/BiasAdd/ReadVariableOp&model_2/dense_3/BiasAdd/ReadVariableOp2N
%model_2/dense_3/MatMul/ReadVariableOp%model_2/dense_3/MatMul/ReadVariableOp2P
&model_2/dense_4/BiasAdd/ReadVariableOp&model_2/dense_4/BiasAdd/ReadVariableOp2N
%model_2/dense_4/MatMul/ReadVariableOp%model_2/dense_4/MatMul/ReadVariableOp:P L
'
_output_shapes
:         b
!
_user_specified_name	input_3
џ

§
@__inference_dense_3_layer_call_and_return_conditional_losses_868

inputs7
$matmul_readvariableop_dense_3_kernel:	bђ2
#biasadd_readvariableop_dense_3_bias:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpћ
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_3_kernel*
_output_shapes
:	bђ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
MatMulЉ
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_3_bias*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
Reluў
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0**
_input_shapes
:         b: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         b
 
_user_specified_nameinputs
п
А
__inference__traced_save_928
file_prefix-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop
savev2_const

identity_1ѕбMergeV2CheckpointsЈ
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1І
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename§
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ј
valueЁBѓB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesњ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
SaveV2/shape_and_slicesТ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes	
22
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*<
_input_shapes+
): :	bђ:ђ:
ђљ:љ: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	bђ:!

_output_shapes	
:ђ:&"
 
_output_shapes
:
ђљ:!

_output_shapes	
:љ:

_output_shapes
: 
╩

■
@__inference_dense_4_layer_call_and_return_conditional_losses_665

inputs8
$matmul_readvariableop_dense_4_kernel:
ђљ2
#biasadd_readvariableop_dense_4_bias:	љ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЋ
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_4_kernel* 
_output_shapes
:
ђљ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ2
MatMulЉ
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_4_bias*
_output_shapes	
:љ*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:         љ2	
SigmoidЉ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
њ
▄
@__inference_model_2_layer_call_and_return_conditional_losses_839

inputs?
,dense_3_matmul_readvariableop_dense_3_kernel:	bђ:
+dense_3_biasadd_readvariableop_dense_3_bias:	ђ@
,dense_4_matmul_readvariableop_dense_4_kernel:
ђљ:
+dense_4_biasadd_readvariableop_dense_4_bias:	љ
identityѕбdense_3/BiasAdd/ReadVariableOpбdense_3/MatMul/ReadVariableOpбdense_4/BiasAdd/ReadVariableOpбdense_4/MatMul/ReadVariableOpг
dense_3/MatMul/ReadVariableOpReadVariableOp,dense_3_matmul_readvariableop_dense_3_kernel*
_output_shapes
:	bђ*
dtype02
dense_3/MatMul/ReadVariableOpї
dense_3/MatMulMatMulinputs%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_3/MatMulЕ
dense_3/BiasAdd/ReadVariableOpReadVariableOp+dense_3_biasadd_readvariableop_dense_3_bias*
_output_shapes	
:ђ*
dtype02 
dense_3/BiasAdd/ReadVariableOpб
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_3/BiasAddq
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
dense_3/ReluГ
dense_4/MatMul/ReadVariableOpReadVariableOp,dense_4_matmul_readvariableop_dense_4_kernel* 
_output_shapes
:
ђљ*
dtype02
dense_4/MatMul/ReadVariableOpа
dense_4/MatMulMatMuldense_3/Relu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ2
dense_4/MatMulЕ
dense_4/BiasAdd/ReadVariableOpReadVariableOp+dense_4_biasadd_readvariableop_dense_4_bias*
_output_shapes	
:љ*
dtype02 
dense_4/BiasAdd/ReadVariableOpб
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ2
dense_4/BiasAddz
dense_4/SigmoidSigmoiddense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         љ2
dense_4/SigmoidЖ
IdentityIdentitydense_4/Sigmoid:y:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         b: : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:O K
'
_output_shapes
:         b
 
_user_specified_nameinputs
╗
─
@__inference_model_2_layer_call_and_return_conditional_losses_670

inputs)
dense_3_dense_3_kernel:	bђ#
dense_3_dense_3_bias:	ђ*
dense_4_dense_4_kernel:
ђљ#
dense_4_dense_4_bias:	љ
identityѕбdense_3/StatefulPartitionedCallбdense_4/StatefulPartitionedCallЏ
dense_3/StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_dense_3_kerneldense_3_dense_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_3_layer_call_and_return_conditional_losses_6502!
dense_3/StatefulPartitionedCallй
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_dense_4_kerneldense_4_dense_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_4_layer_call_and_return_conditional_losses_6652!
dense_4/StatefulPartitionedCall┴
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         b: : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:O K
'
_output_shapes
:         b
 
_user_specified_nameinputs
У
▀
%__inference_model_2_layer_call_fn_857

inputs!
dense_3_kernel:	bђ
dense_3_bias:	ђ"
dense_4_kernel:
ђљ
dense_4_bias:	љ
identityѕбStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_kerneldense_3_biasdense_4_kerneldense_4_bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_model_2_layer_call_and_return_conditional_losses_7362
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         b: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         b
 
_user_specified_nameinputs"╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ф
serving_defaultЌ
;
input_30
serving_default_input_3:0         b<
dense_41
StatefulPartitionedCall:0         љtensorflow/serving/predict:┤d
ќ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
regularization_losses
	variables
trainable_variables
	keras_api

signatures
*$&call_and_return_all_conditional_losses
%__call__
&_default_save_signature" 
_tf_keras_networkс{"name": "model_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 98]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["input_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 784, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_4", "inbound_nodes": [[["dense_3", 0, 0, {}]]]}], "input_layers": [["input_3", 0, 0]], "output_layers": [["dense_4", 0, 0]]}, "shared_object_id": 7, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 98]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 98]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 98]}, "float32", "input_3"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 98]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["input_3", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 784, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_4", "inbound_nodes": [[["dense_3", 0, 0, {}]]], "shared_object_id": 6}], "input_layers": [["input_3", 0, 0]], "output_layers": [["dense_4", 0, 0]]}}}
в"У
_tf_keras_input_layer╚{"class_name": "InputLayer", "name": "input_3", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 98]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 98]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}}
э

	kernel

bias
regularization_losses
	variables
trainable_variables
	keras_api
*'&call_and_return_all_conditional_losses
(__call__"м
_tf_keras_layerИ{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_3", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 98}}, "shared_object_id": 9}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 98]}}
§

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
*)&call_and_return_all_conditional_losses
*__call__"п
_tf_keras_layerЙ{"name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 784, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_3", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}, "shared_object_id": 10}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 512]}}
 "
trackable_list_wrapper
<
	0

1
2
3"
trackable_list_wrapper
<
	0

1
2
3"
trackable_list_wrapper
╩

layers
metrics
regularization_losses
	variables
layer_metrics
trainable_variables
layer_regularization_losses
non_trainable_variables
%__call__
&_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
,
+serving_default"
signature_map
!:	bђ2dense_3/kernel
:ђ2dense_3/bias
 "
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
Г

layers
metrics
regularization_losses
layer_metrics
	variables
trainable_variables
non_trainable_variables
layer_regularization_losses
(__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
": 
ђљ2dense_4/kernel
:љ2dense_4/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Г

layers
 metrics
regularization_losses
!layer_metrics
	variables
trainable_variables
"non_trainable_variables
#layer_regularization_losses
*__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╬2╦
@__inference_model_2_layer_call_and_return_conditional_losses_821
@__inference_model_2_layer_call_and_return_conditional_losses_839
@__inference_model_2_layer_call_and_return_conditional_losses_782
@__inference_model_2_layer_call_and_return_conditional_losses_792└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Р2▀
%__inference_model_2_layer_call_fn_677
%__inference_model_2_layer_call_fn_848
%__inference_model_2_layer_call_fn_857
%__inference_model_2_layer_call_fn_772└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▄2┘
__inference__wrapped_model_632Х
І▓Є
FullArgSpec
argsџ 
varargsjargs
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *&б#
!і
input_3         b
Ж2у
@__inference_dense_3_layer_call_and_return_conditional_losses_868б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
¤2╠
%__inference_dense_3_layer_call_fn_875б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ж2у
@__inference_dense_4_layer_call_and_return_conditional_losses_886б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
¤2╠
%__inference_dense_4_layer_call_fn_893б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╚B┼
!__inference_signature_wrapper_803input_3"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 ј
__inference__wrapped_model_632l	
0б-
&б#
!і
input_3         b
ф "2ф/
-
dense_4"і
dense_4         љА
@__inference_dense_3_layer_call_and_return_conditional_losses_868]	
/б,
%б"
 і
inputs         b
ф "&б#
і
0         ђ
џ y
%__inference_dense_3_layer_call_fn_875P	
/б,
%б"
 і
inputs         b
ф "і         ђб
@__inference_dense_4_layer_call_and_return_conditional_losses_886^0б-
&б#
!і
inputs         ђ
ф "&б#
і
0         љ
џ z
%__inference_dense_4_layer_call_fn_893Q0б-
&б#
!і
inputs         ђ
ф "і         љг
@__inference_model_2_layer_call_and_return_conditional_losses_782h	
8б5
.б+
!і
input_3         b
p 

 
ф "&б#
і
0         љ
џ г
@__inference_model_2_layer_call_and_return_conditional_losses_792h	
8б5
.б+
!і
input_3         b
p

 
ф "&б#
і
0         љ
џ Ф
@__inference_model_2_layer_call_and_return_conditional_losses_821g	
7б4
-б*
 і
inputs         b
p 

 
ф "&б#
і
0         љ
џ Ф
@__inference_model_2_layer_call_and_return_conditional_losses_839g	
7б4
-б*
 і
inputs         b
p

 
ф "&б#
і
0         љ
џ ё
%__inference_model_2_layer_call_fn_677[	
8б5
.б+
!і
input_3         b
p 

 
ф "і         љё
%__inference_model_2_layer_call_fn_772[	
8б5
.б+
!і
input_3         b
p

 
ф "і         љЃ
%__inference_model_2_layer_call_fn_848Z	
7б4
-б*
 і
inputs         b
p 

 
ф "і         љЃ
%__inference_model_2_layer_call_fn_857Z	
7б4
-б*
 і
inputs         b
p

 
ф "і         љю
!__inference_signature_wrapper_803w	
;б8
б 
1ф.
,
input_3!і
input_3         b"2ф/
-
dense_4"і
dense_4         љ
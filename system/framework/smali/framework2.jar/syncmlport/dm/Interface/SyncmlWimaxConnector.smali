.class public Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
.super Ljava/lang/Object;
.source "SyncmlWimaxConnector.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-string v0, "syncml_port"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native tsldm_ext_get_dynnode_names(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I
.end method

.method public native tsldm_wimax_ext_add_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I
.end method

.method public native tsldm_wimax_ext_del_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I
.end method

.method public native tsldm_wimax_ext_get_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I
.end method

.method public native tsldm_wimax_ext_init_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I
.end method

.method public native tsldm_wimax_ext_replace_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I
.end method

.method public native tsldm_wimax_ext_ses_done_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I
.end method

.method public native wimaxTurnOff()I
.end method

.method public native wimaxTurnOn()I
.end method

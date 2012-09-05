.class public Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;
.super Ljava/lang/Object;
.source "Tsldm_generic_st.java"


# instance fields
.field public data:[B

.field public ext_hdlr_path:Ljava/lang/String;

.field public fmt:I

.field public len:I

.field public server_id:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 29
    iput v1, p0, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->len:I

    .line 31
    iput-object v0, p0, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->server_id:Ljava/lang/String;

    .line 33
    iput v1, p0, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 35
    return-void
.end method

.class public Ljcifs/dcerpc/msrpc/samr$SamrConnect4;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrConnect4"
.end annotation


# instance fields
.field public access_mask:I

.field public handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public retval:I

.field public system_name:Ljava/lang/String;

.field public unknown:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjcifs/dcerpc/rpc$policy_handle;)V
    .registers 5
    .parameter "system_name"
    .parameter "unknown"
    .parameter "access_mask"
    .parameter "handle"

    .prologue
    .line 89
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 90
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect4;->system_name:Ljava/lang/String;

    .line 91
    iput p2, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect4;->unknown:I

    .line 92
    iput p3, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect4;->access_mask:I

    .line 93
    iput-object p4, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect4;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 94
    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect4;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 107
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect4;->retval:I

    .line 108
    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect4;->system_name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 98
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect4;->system_name:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 99
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect4;->system_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 102
    :cond_f
    iget v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect4;->unknown:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 103
    iget v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect4;->access_mask:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 104
    return-void
.end method

.method public getOpnum()I
    .registers 2

    .prologue
    .line 78
    const/16 v0, 0x3e

    return v0
.end method

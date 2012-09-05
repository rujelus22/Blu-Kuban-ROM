.class public Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteTOD"
.end annotation


# instance fields
.field public info:Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

.field public retval:I

.field public servername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;)V
    .registers 3
    .parameter "servername"
    .parameter "info"

    .prologue
    .line 558
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 559
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->servername:Ljava/lang/String;

    .line 560
    iput-object p2, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->info:Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

    .line 561
    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 572
    .local v0, _infop:I
    if-eqz v0, :cond_16

    .line 573
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->info:Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

    if-nez v1, :cond_11

    .line 574
    new-instance v1, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

    invoke-direct {v1}, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;-><init>()V

    iput-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->info:Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

    .line 576
    :cond_11
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->info:Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

    invoke-virtual {v1, p1}, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 579
    :cond_16
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->retval:I

    .line 580
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
    .line 564
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->servername:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 565
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->servername:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 566
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->servername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 569
    :cond_f
    return-void
.end method

.method public getOpnum()I
    .registers 2

    .prologue
    .line 552
    const/16 v0, 0x1c

    return v0
.end method

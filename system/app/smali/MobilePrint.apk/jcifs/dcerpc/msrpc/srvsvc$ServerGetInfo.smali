.class public Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerGetInfo"
.end annotation


# instance fields
.field public info:Ljcifs/dcerpc/ndr/NdrObject;

.field public level:I

.field public retval:I

.field public servername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/ndr/NdrObject;)V
    .registers 4
    .parameter "servername"
    .parameter "level"
    .parameter "info"

    .prologue
    .line 474
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 475
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->servername:Ljava/lang/String;

    .line 476
    iput p2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->level:I

    .line 477
    iput-object p3, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 478
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
    .line 489
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 490
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 491
    .local v0, _infop:I
    if-eqz v0, :cond_1b

    .line 492
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    if-nez v1, :cond_14

    .line 493
    new-instance v1, Ljcifs/dcerpc/msrpc/srvsvc$ServerInfo100;

    invoke-direct {v1}, Ljcifs/dcerpc/msrpc/srvsvc$ServerInfo100;-><init>()V

    iput-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 495
    :cond_14
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 496
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v1, p1}, Ljcifs/dcerpc/ndr/NdrObject;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 499
    :cond_1b
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->retval:I

    .line 500
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
    .line 481
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->servername:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 482
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->servername:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 483
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->servername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 486
    :cond_f
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->level:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 487
    return-void
.end method

.method public getOpnum()I
    .registers 2

    .prologue
    .line 467
    const/16 v0, 0x15

    return v0
.end method

.class public Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareEnumAll"
.end annotation


# instance fields
.field public info:Ljcifs/dcerpc/ndr/NdrObject;

.field public level:I

.field public prefmaxlen:I

.field public resume_handle:I

.field public retval:I

.field public servername:Ljava/lang/String;

.field public totalentries:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/ndr/NdrObject;III)V
    .registers 7
    .parameter "servername"
    .parameter "level"
    .parameter "info"
    .parameter "prefmaxlen"
    .parameter "totalentries"
    .parameter "resume_handle"

    .prologue
    .line 345
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 351
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->servername:Ljava/lang/String;

    .line 352
    iput p2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->level:I

    .line 353
    iput-object p3, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 354
    iput p4, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->prefmaxlen:I

    .line 355
    iput p5, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->totalentries:I

    .line 356
    iput p6, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->resume_handle:I

    .line 357
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
    .line 378
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->level:I

    .line 379
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 380
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 381
    .local v0, _infop:I
    if-eqz v0, :cond_21

    .line 382
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    if-nez v1, :cond_1a

    .line 383
    new-instance v1, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;

    invoke-direct {v1}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;-><init>()V

    iput-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 385
    :cond_1a
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 386
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v1, p1}, Ljcifs/dcerpc/ndr/NdrObject;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 389
    :cond_21
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->totalentries:I

    .line 390
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->resume_handle:I

    .line 391
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->retval:I

    .line 392
    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 5
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 360
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->servername:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 361
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->servername:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 362
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->servername:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 365
    :cond_f
    iget v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->level:I

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 366
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->level:I

    .line 367
    .local v0, _descr:I
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 368
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {p1, v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 369
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    if-eqz v1, :cond_29

    .line 370
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 371
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v1, p1}, Ljcifs/dcerpc/ndr/NdrObject;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 374
    :cond_29
    iget v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->prefmaxlen:I

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 375
    iget v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->resume_handle:I

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 376
    return-void
.end method

.method public getOpnum()I
    .registers 2

    .prologue
    .line 335
    const/16 v0, 0xf

    return v0
.end method

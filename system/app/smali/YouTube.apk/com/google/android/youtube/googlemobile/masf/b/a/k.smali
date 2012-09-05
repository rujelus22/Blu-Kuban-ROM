.class final Lcom/google/android/youtube/googlemobile/masf/b/a/k;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/io/DataInputStream;

.field final b:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

.field c:Lcom/google/android/youtube/googlemobile/masf/a/o;

.field d:Ljava/lang/Exception;

.field e:Z

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/util/Vector;

.field i:Ljava/util/Vector;

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:J

.field r:J

.field s:I

.field t:I

.field final synthetic u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;


# direct methods
.method private a(Lcom/google/android/youtube/googlemobile/masf/b/a/g;)Z
    .registers 12

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowResumeService.Control.processResponse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->b()Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v1, "WindowResumeService.Control.processResponse(): exception != null"

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    :goto_2a
    return v0

    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->d()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowResumeService.Control.processResponse(): statusCode == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_f8

    :pswitch_48
    const-string v1, "WindowResumeService.Control.processResponse(): default"

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    goto :goto_2a

    :pswitch_4e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowResumeService.Control.processResponse(): statusCode == OK ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->g:Ljava/lang/String;

    if-nez v3, :cond_82

    const-string v3, "WindowResumeService.Control.processResponse(): serverTicket == null"

    invoke-static {v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_82
    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->f()I

    move-result v3

    if-nez v3, :cond_a7

    if-nez v2, :cond_a7

    const-string v0, "WindowResumeService.Control.processResponse(): missingChunkCount == 0"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    :try_start_8f
    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->i()Ljava/io/DataInputStream;

    move-result-object v0

    new-instance v2, Lcom/google/android/youtube/googlemobile/masf/a/l;

    invoke-direct {v2, v0}, Lcom/google/android/youtube/googlemobile/masf/a/l;-><init>(Ljava/io/DataInputStream;)V

    invoke-virtual {v2}, Lcom/google/android/youtube/googlemobile/masf/a/l;->b()Lcom/google/android/youtube/googlemobile/masf/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->c:Lcom/google/android/youtube/googlemobile/masf/a/o;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->e:Z
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_a1} :catch_a3

    :cond_a1
    :goto_a1
    move v0, v1

    goto :goto_2a

    :catch_a3
    move-exception v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->d:Ljava/lang/Exception;

    goto :goto_a1

    :cond_a7
    const-string v2, "WindowResumeService.Control.processResponse(): missingChunkCount > 0"

    invoke-static {v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    if-nez v2, :cond_a1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->g()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->h()[I

    move-result-object v4

    :goto_bf
    if-ge v0, v3, :cond_a1

    iget-object v5, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    new-instance v6, Lcom/google/android/youtube/googlemobile/masf/b/a/j;

    iget-object v7, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    aget v8, v2, v0

    aget v9, v4, v0

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/youtube/googlemobile/masf/b/a/j;-><init>(Lcom/google/android/youtube/googlemobile/masf/b/a/h;II)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_bf

    :pswitch_d4
    const-string v0, "WindowResumeServiceControl.processResponse(): statusCode == CONTINUE (2)"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->e:Z

    move v0, v1

    goto/16 :goto_2a

    :pswitch_de
    const-string v0, "WindowResumeService.Control.processResponse(): statusCode == BAD TICKET (-4)"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->a(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->g:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    move v0, v1

    goto/16 :goto_2a

    :pswitch_f1
    const-string v1, "WindowResumeService.Control.processResponse(): statusCode == CANNOT_EXTEND (-5)"

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    goto/16 :goto_2a

    :pswitch_data_f8
    .packed-switch -0x5
        :pswitch_f1
        :pswitch_de
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_4e
        :pswitch_48
        :pswitch_d4
        :pswitch_4e
    .end packed-switch
.end method

.method private a(II)[B
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Control.getRequestPayload("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    if-ge p1, v0, :cond_32

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a:Ljava/io/DataInputStream;

    :cond_32
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a:Ljava/io/DataInputStream;

    if-nez v0, :cond_66

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->b:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/c;->e()I

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->b:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/c;->e()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7a

    :cond_4a
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Lcom/google/android/youtube/googlemobile/common/io/l;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->a(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/masf/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/googlemobile/masf/a/d;->c()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->b:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    invoke-virtual {v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/c;->c()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/googlemobile/common/io/l;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a:Ljava/io/DataInputStream;

    :cond_66
    :goto_66
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    if-le p1, v0, :cond_88

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a:Ljava/io/DataInputStream;

    iget v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    goto :goto_66

    :cond_7a
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->b:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    invoke-virtual {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/c;->c()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a:Ljava/io/DataInputStream;

    goto :goto_66

    :cond_88
    new-array v0, p2, [B

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    return-object v0
.end method

.method private a(I)[Lcom/google/android/youtube/googlemobile/masf/b/a/f;
    .registers 9

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowResumeService.Control.createRequest("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->g:Ljava/lang/String;

    if-nez v1, :cond_60

    const-string v1, "WindowResumeService.Control.createRequest(): serverTicket == null"

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_5f

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->m:I

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->b()Lcom/google/android/youtube/googlemobile/masf/b/a/f;

    move-result-object v1

    const-string v2, "Length"

    iget v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a(II)[B

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->a(I[B)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->b:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/c;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->d(I)V

    new-array v0, v5, [Lcom/google/android/youtube/googlemobile/masf/b/a/f;

    aput-object v1, v0, v3

    :cond_5f
    :goto_5f
    return-object v0

    :cond_60
    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    if-nez v1, :cond_96

    const-string v1, "WindowResumeService.Control.createRequest(): chunkVector == null"

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_5f

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->b()Lcom/google/android/youtube/googlemobile/masf/b/a/f;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->a(Ljava/lang/String;)V

    const-string v2, "Length"

    iget v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->a(I[B)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->b:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/c;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->d(I)V

    new-array v0, v5, [Lcom/google/android/youtube/googlemobile/masf/b/a/f;

    aput-object v1, v0, v3

    goto :goto_5f

    :cond_96
    const-string v0, "WindowResumeService.Control.createRequest(): chunkVector != null"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    new-array v1, p1, [Lcom/google/android/youtube/googlemobile/masf/b/a/f;

    move v2, v3

    :goto_9e
    if-ge v2, p1, :cond_e8

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_e8

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/b/a/j;

    iget v4, v0, Lcom/google/android/youtube/googlemobile/masf/b/a/j;->a:I

    iget v5, v0, Lcom/google/android/youtube/googlemobile/masf/b/a/j;->b:I

    iget-object v6, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v6}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v0, Lcom/google/android/youtube/googlemobile/masf/b/a/j;->b:I

    if-le v6, v5, :cond_e2

    iget v6, v0, Lcom/google/android/youtube/googlemobile/masf/b/a/j;->a:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/google/android/youtube/googlemobile/masf/b/a/j;->a:I

    iget v6, v0, Lcom/google/android/youtube/googlemobile/masf/b/a/j;->b:I

    sub-int/2addr v6, v5

    iput v6, v0, Lcom/google/android/youtube/googlemobile/masf/b/a/j;->b:I

    :goto_cc
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->b()Lcom/google/android/youtube/googlemobile/masf/b/a/f;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->a(Ljava/lang/String;)V

    invoke-direct {p0, v4, v5}, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a(II)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->a(I[B)V

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9e

    :cond_e2
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_cc

    :cond_e8
    move-object v0, v1

    goto/16 :goto_5f
.end method

.method private b()Lcom/google/android/youtube/googlemobile/masf/b/a/f;
    .registers 4

    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;

    invoke-direct {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;-><init>()V

    new-instance v1, Lcom/google/android/youtube/googlemobile/masf/b/a/l;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-direct {v1, v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/l;-><init>(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->a(Lcom/google/android/youtube/googlemobile/masf/a/n;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->b(I)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 10

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_4
    const-string v0, "WindowResumeService.Control.run()"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Control.run(): requestVector.size() == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_2b
    if-lez v0, :cond_b3

    add-int/lit8 v1, v0, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowResumeService.Control.run(): i == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->l()Lcom/google/android/youtube/googlemobile/masf/b/a/g;

    move-result-object v2

    if-eqz v2, :cond_76

    iget v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->p:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->p:I

    invoke-direct {p0, v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a(Lcom/google/android/youtube/googlemobile/masf/b/a/g;)Z

    move-result v3

    if-eqz v3, :cond_78

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->k:I

    iget v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->j:I

    if-ge v0, v3, :cond_6e

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->o:I

    :cond_6e
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_73
    invoke-virtual {v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->a()V

    :cond_76
    move v0, v1

    goto :goto_2b

    :cond_78
    iget v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->o:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->o:I

    iget v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->o:I

    iget v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->n:I

    if-ge v3, v4, :cond_95

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->a(Lcom/google/android/youtube/googlemobile/masf/b/a/g;)V

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->c(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/masf/f;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Lcom/google/android/youtube/googlemobile/masf/a/m;)V
    :try_end_91
    .catchall {:try_start_4 .. :try_end_91} :catchall_92

    goto :goto_73

    :catchall_92
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_95
    :try_start_95
    invoke-virtual {v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->b()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-virtual {v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->c()Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->d:Ljava/lang/Exception;

    :goto_a1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_73

    :cond_a7
    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/ConnectionException;

    invoke-virtual {v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->d()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/google/android/youtube/googlemobile/masf/ConnectionException;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->d:Ljava/lang/Exception;

    goto :goto_a1

    :cond_b3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "WindowResumeService.Control.updateProgress()"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->q:J

    sub-long v0, v2, v0

    long-to-int v0, v0

    iget-wide v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->q:J

    cmp-long v1, v4, v7

    if-nez v1, :cond_ca

    iput-wide v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->q:J

    move v0, v6

    :cond_ca
    const/16 v1, 0x64

    if-lt v0, v1, :cond_11c

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->p:I

    const/4 v4, 0x2

    if-le v1, v4, :cond_11c

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    iget v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->s:I

    if-le v1, v4, :cond_116

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    iget v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->s:I

    sub-int/2addr v1, v4

    if-nez v0, :cond_e1

    const/4 v0, 0x1

    :cond_e1
    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->t:I

    iget v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->t:I

    sub-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowResumeService.Control.run(): bandwidthEstimate = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->t:I

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->t:I

    int-to-long v0, v0

    iget v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->m:I

    iget v5, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v7, v0, v7

    if-nez v7, :cond_16e

    const-wide/16 v0, -0x1

    :goto_114
    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->r:J

    :cond_116
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->s:I

    iput-wide v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->q:J

    :cond_11c
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->p:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_13b

    new-instance v7, Lcom/google/android/youtube/googlemobile/common/c/b;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->f(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/common/c/c;

    move-result-object v8

    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/b/a/i;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->b:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    iget v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->r:J

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/googlemobile/masf/b/a/i;-><init>(Lcom/google/android/youtube/googlemobile/masf/b/a/c;JJ)V

    invoke-direct {v7, v8, v0}, Lcom/google/android/youtube/googlemobile/common/c/b;-><init>(Lcom/google/android/youtube/googlemobile/common/c/c;Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Lcom/google/android/youtube/googlemobile/common/c/b;->e()V

    :cond_13b
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->d:Ljava/lang/Exception;

    if-eqz v0, :cond_174

    const-string v0, "WindowResumeService.Control.run(): exception != null"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->d(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_14b
    .catchall {:try_start_95 .. :try_end_14b} :catchall_92

    :try_start_14b
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->e(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_155
    .catchall {:try_start_14b .. :try_end_155} :catchall_171

    :try_start_155
    new-instance v0, Lcom/google/android/youtube/googlemobile/common/c/b;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->f(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/common/c/c;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/googlemobile/masf/b/a/i;

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->b:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->d:Ljava/lang/Exception;

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/googlemobile/masf/b/a/i;-><init>(Lcom/google/android/youtube/googlemobile/masf/b/a/c;Ljava/lang/Exception;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/common/c/b;-><init>(Lcom/google/android/youtube/googlemobile/common/c/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/b;->e()V
    :try_end_16c
    .catchall {:try_start_155 .. :try_end_16c} :catchall_92

    :cond_16c
    :goto_16c
    monitor-exit p0

    return-void

    :cond_16e
    :try_start_16e
    div-long v0, v4, v0

    goto :goto_114

    :catchall_171
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_174
    iget-boolean v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->e:Z

    if-eqz v0, :cond_1a9

    const-string v0, "WindowResumeService.Control.run(): done == true"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->d(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_184
    .catchall {:try_start_16e .. :try_end_184} :catchall_92

    :try_start_184
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->e(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_18e
    .catchall {:try_start_184 .. :try_end_18e} :catchall_1a6

    :try_start_18e
    new-instance v0, Lcom/google/android/youtube/googlemobile/common/c/b;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->f(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/common/c/c;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/googlemobile/masf/b/a/i;

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->b:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->c:Lcom/google/android/youtube/googlemobile/masf/a/o;

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/googlemobile/masf/b/a/i;-><init>(Lcom/google/android/youtube/googlemobile/masf/b/a/c;Lcom/google/android/youtube/googlemobile/masf/a/o;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/common/c/b;-><init>(Lcom/google/android/youtube/googlemobile/common/c/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/b;->e()V

    goto :goto_16c

    :catchall_1a6
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1a9
    const-string v0, "WindowResumeService.Control.run(): queuing requests"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    if-eqz v0, :cond_1ca

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1ca

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1ca

    const-string v0, "WindowResumeService.Control.run(): resetting chunkVector"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;
    :try_end_1ca
    .catchall {:try_start_18e .. :try_end_1ca} :catchall_92

    :cond_1ca
    :try_start_1ca
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->k:I

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a(I)[Lcom/google/android/youtube/googlemobile/masf/b/a/f;

    move-result-object v1

    if-eqz v1, :cond_16c

    move v0, v6

    :goto_1da
    array-length v2, v1

    if-ge v0, v2, :cond_16c

    aget-object v2, v1, v0

    if-eqz v2, :cond_205

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowResumeService.Control.run(): request = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->h:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->c(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/masf/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Lcom/google/android/youtube/googlemobile/masf/a/m;)V
    :try_end_205
    .catchall {:try_start_1ca .. :try_end_205} :catchall_92
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_205} :catch_208

    :cond_205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1da

    :catch_208
    move-exception v0

    :try_start_209
    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->d:Ljava/lang/Exception;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->g(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/common/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/b;->e()V
    :try_end_214
    .catchall {:try_start_209 .. :try_end_214} :catchall_92

    goto/16 :goto_16c
.end method

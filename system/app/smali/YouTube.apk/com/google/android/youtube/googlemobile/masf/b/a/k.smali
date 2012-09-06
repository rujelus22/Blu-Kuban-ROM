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

    const-string v3, "WindowResumeService.Control.processResponse("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    if-eqz v2, :cond_27

    const-string v1, "WindowResumeService.Control.processResponse(): exception != null"

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    :goto_26
    return v0

    :cond_27
    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->d()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WindowResumeService.Control.processResponse(): statusCode == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_ec

    :pswitch_40
    const-string v1, "WindowResumeService.Control.processResponse(): default"

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    goto :goto_26

    :pswitch_46
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WindowResumeService.Control.processResponse(): statusCode == OK ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->g:Ljava/lang/String;

    if-nez v3, :cond_76

    const-string v3, "WindowResumeService.Control.processResponse(): serverTicket == null"

    invoke-static {v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->f()I

    move-result v3

    if-nez v3, :cond_9b

    if-nez v2, :cond_9b

    const-string v0, "WindowResumeService.Control.processResponse(): missingChunkCount == 0"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    :try_start_83
    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->i()Ljava/io/DataInputStream;

    move-result-object v0

    new-instance v2, Lcom/google/android/youtube/googlemobile/masf/a/l;

    invoke-direct {v2, v0}, Lcom/google/android/youtube/googlemobile/masf/a/l;-><init>(Ljava/io/DataInputStream;)V

    invoke-virtual {v2}, Lcom/google/android/youtube/googlemobile/masf/a/l;->b()Lcom/google/android/youtube/googlemobile/masf/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->c:Lcom/google/android/youtube/googlemobile/masf/a/o;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->e:Z
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_95} :catch_97

    :cond_95
    :goto_95
    move v0, v1

    goto :goto_26

    :catch_97
    move-exception v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->d:Ljava/lang/Exception;

    goto :goto_95

    :cond_9b
    const-string v2, "WindowResumeService.Control.processResponse(): missingChunkCount > 0"

    invoke-static {v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    if-nez v2, :cond_95

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->g()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->h()[I

    move-result-object v4

    :goto_b3
    if-ge v0, v3, :cond_95

    iget-object v5, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    new-instance v6, Lcom/google/android/youtube/googlemobile/masf/b/a/j;

    iget-object v7, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    aget v8, v2, v0

    aget v9, v4, v0

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/youtube/googlemobile/masf/b/a/j;-><init>(Lcom/google/android/youtube/googlemobile/masf/b/a/h;II)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    :pswitch_c8
    const-string v0, "WindowResumeServiceControl.processResponse(): statusCode == CONTINUE (2)"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->e:Z

    move v0, v1

    goto/16 :goto_26

    :pswitch_d2
    const-string v0, "WindowResumeService.Control.processResponse(): statusCode == BAD TICKET (-4)"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->a(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->g:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    move v0, v1

    goto/16 :goto_26

    :pswitch_e5
    const-string v1, "WindowResumeService.Control.processResponse(): statusCode == CANNOT_EXTEND (-5)"

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    goto/16 :goto_26

    :pswitch_data_ec
    .packed-switch -0x5
        :pswitch_e5
        :pswitch_d2
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_46
        :pswitch_40
        :pswitch_c8
        :pswitch_46
    .end packed-switch
.end method

.method private a(II)[B
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowResumeService.Control.getRequestPayload("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    if-ge p1, v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a:Ljava/io/DataInputStream;

    :cond_2e
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a:Ljava/io/DataInputStream;

    if-nez v0, :cond_62

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->b:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/c;->e()I

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->b:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/c;->e()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_76

    :cond_46
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

    :cond_62
    :goto_62
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    if-le p1, v0, :cond_84

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a:Ljava/io/DataInputStream;

    iget v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    goto :goto_62

    :cond_76
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->b:Lcom/google/android/youtube/googlemobile/masf/b/a/c;

    invoke-virtual {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/c;->c()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a:Ljava/io/DataInputStream;

    goto :goto_62

    :cond_84
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

    const-string v2, "WindowResumeService.Control.createRequest("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->g:Ljava/lang/String;

    if-nez v1, :cond_5c

    const-string v1, "WindowResumeService.Control.createRequest(): serverTicket == null"

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_5b

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

    :cond_5b
    :goto_5b
    return-object v0

    :cond_5c
    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    if-nez v1, :cond_92

    const-string v1, "WindowResumeService.Control.createRequest(): chunkVector == null"

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_5b

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

    goto :goto_5b

    :cond_92
    const-string v0, "WindowResumeService.Control.createRequest(): chunkVector != null"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    new-array v1, p1, [Lcom/google/android/youtube/googlemobile/masf/b/a/f;

    move v2, v3

    :goto_9a
    if-ge v2, p1, :cond_e4

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_e4

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

    if-le v6, v5, :cond_de

    iget v6, v0, Lcom/google/android/youtube/googlemobile/masf/b/a/j;->a:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/google/android/youtube/googlemobile/masf/b/a/j;->a:I

    iget v6, v0, Lcom/google/android/youtube/googlemobile/masf/b/a/j;->b:I

    sub-int/2addr v6, v5

    iput v6, v0, Lcom/google/android/youtube/googlemobile/masf/b/a/j;->b:I

    :goto_c8
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

    goto :goto_9a

    :cond_de
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_c8

    :cond_e4
    move-object v0, v1

    goto/16 :goto_5b
.end method

.method private b()Lcom/google/android/youtube/googlemobile/masf/b/a/f;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/b/a/f;

    invoke-direct {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;-><init>()V

    new-instance v1, Lcom/google/android/youtube/googlemobile/masf/b/a/l;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/l;-><init>(Lcom/google/android/youtube/googlemobile/masf/b/a/h;B)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->a(Lcom/google/android/youtube/googlemobile/masf/a/n;)V

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->b(I)V

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

    const-string v1, "WindowResumeService.Control.run(): requestVector.size() == "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    :goto_27
    if-lez v0, :cond_ab

    add-int/lit8 v1, v0, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "WindowResumeService.Control.run(): i == "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    if-eqz v2, :cond_6e

    iget v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->p:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->p:I

    invoke-direct {p0, v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a(Lcom/google/android/youtube/googlemobile/masf/b/a/g;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->k:I

    iget v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->j:I

    if-ge v0, v3, :cond_66

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->o:I

    :cond_66
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_6b
    invoke-virtual {v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->a()V

    :cond_6e
    move v0, v1

    goto :goto_27

    :cond_70
    iget v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->o:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->o:I

    iget v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->o:I

    iget v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->n:I

    if-ge v3, v4, :cond_8d

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/f;->a(Lcom/google/android/youtube/googlemobile/masf/b/a/g;)V

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v3}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->c(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/masf/f;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Lcom/google/android/youtube/googlemobile/masf/a/m;)V
    :try_end_89
    .catchall {:try_start_4 .. :try_end_89} :catchall_8a

    goto :goto_6b

    :catchall_8a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8d
    :try_start_8d
    invoke-virtual {v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->b()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-virtual {v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->c()Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->d:Ljava/lang/Exception;

    :goto_99
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_6b

    :cond_9f
    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/ConnectionException;

    invoke-virtual {v2}, Lcom/google/android/youtube/googlemobile/masf/b/a/g;->d()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/google/android/youtube/googlemobile/masf/ConnectionException;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->d:Ljava/lang/Exception;

    goto :goto_99

    :cond_ab
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "WindowResumeService.Control.updateProgress()"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->q:J

    sub-long v0, v2, v0

    long-to-int v0, v0

    iget-wide v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->q:J

    cmp-long v1, v4, v7

    if-nez v1, :cond_c2

    iput-wide v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->q:J

    move v0, v6

    :cond_c2
    const/16 v1, 0x64

    if-lt v0, v1, :cond_110

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->p:I

    const/4 v4, 0x2

    if-le v1, v4, :cond_110

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    iget v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->s:I

    if-le v1, v4, :cond_10a

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    iget v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->s:I

    sub-int/2addr v1, v4

    if-nez v0, :cond_d9

    const/4 v0, 0x1

    :cond_d9
    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->t:I

    iget v4, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->t:I

    sub-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "WindowResumeService.Control.run(): bandwidthEstimate = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    if-nez v7, :cond_162

    const-wide/16 v0, -0x1

    :goto_108
    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->r:J

    :cond_10a
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->l:I

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->s:I

    iput-wide v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->q:J

    :cond_110
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->p:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_12f

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

    :cond_12f
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->d:Ljava/lang/Exception;

    if-eqz v0, :cond_168

    const-string v0, "WindowResumeService.Control.run(): exception != null"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->d(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_13f
    .catchall {:try_start_8d .. :try_end_13f} :catchall_8a

    :try_start_13f
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->e(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_149
    .catchall {:try_start_13f .. :try_end_149} :catchall_165

    :try_start_149
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
    :try_end_160
    .catchall {:try_start_149 .. :try_end_160} :catchall_8a

    :cond_160
    :goto_160
    monitor-exit p0

    return-void

    :cond_162
    :try_start_162
    div-long v0, v4, v0

    goto :goto_108

    :catchall_165
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_168
    iget-boolean v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->e:Z

    if-eqz v0, :cond_19d

    const-string v0, "WindowResumeService.Control.run(): done == true"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->d(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_178
    .catchall {:try_start_162 .. :try_end_178} :catchall_8a

    :try_start_178
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->e(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_182
    .catchall {:try_start_178 .. :try_end_182} :catchall_19a

    :try_start_182
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

    goto :goto_160

    :catchall_19a
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_19d
    const-string v0, "WindowResumeService.Control.run(): queuing requests"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    if-eqz v0, :cond_1be

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1be

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1be

    const-string v0, "WindowResumeService.Control.run(): resetting chunkVector"

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->i:Ljava/util/Vector;
    :try_end_1be
    .catchall {:try_start_182 .. :try_end_1be} :catchall_8a

    :cond_1be
    :try_start_1be
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->k:I

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->a(I)[Lcom/google/android/youtube/googlemobile/masf/b/a/f;

    move-result-object v1

    if-eqz v1, :cond_160

    move v0, v6

    :goto_1ce
    array-length v2, v1

    if-ge v0, v2, :cond_160

    aget-object v2, v1, v0

    if-eqz v2, :cond_1f5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WindowResumeService.Control.run(): request = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    :try_end_1f5
    .catchall {:try_start_1be .. :try_end_1f5} :catchall_8a
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1f5} :catch_1f8

    :cond_1f5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ce

    :catch_1f8
    move-exception v0

    :try_start_1f9
    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->d:Ljava/lang/Exception;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/k;->u:Lcom/google/android/youtube/googlemobile/masf/b/a/h;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a/h;->g(Lcom/google/android/youtube/googlemobile/masf/b/a/h;)Lcom/google/android/youtube/googlemobile/common/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/b;->e()V
    :try_end_204
    .catchall {:try_start_1f9 .. :try_end_204} :catchall_8a

    goto/16 :goto_160
.end method

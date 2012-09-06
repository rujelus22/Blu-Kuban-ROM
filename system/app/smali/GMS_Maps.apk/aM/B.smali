.class LaM/b;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/F;

.field final synthetic f:LaM/g;

.field final synthetic g:Lcom/google/googlenav/android/Y;

.field final synthetic h:LaM/a;


# direct methods
.method constructor <init>(LaM/a;LY/c;ILcom/google/googlenav/F;LaM/g;Lcom/google/googlenav/android/Y;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, LaM/b;->h:LaM/a;

    iput p3, p0, LaM/b;->a:I

    iput-object p4, p0, LaM/b;->b:Lcom/google/googlenav/F;

    iput-object p5, p0, LaM/b;->f:LaM/g;

    iput-object p6, p0, LaM/b;->g:Lcom/google/googlenav/android/Y;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/aW;Ljava/lang/String;Lcom/google/googlenav/common/io/j;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ah()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aW;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 143
    invoke-direct {p0, v0, p2, p3}, LaM/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;Lcom/google/googlenav/common/io/j;)V

    .line 146
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 148
    const/16 v1, 0xf

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 150
    const-string v1, "SAVED_BGFS_EXTRA_3"

    invoke-direct {p0, v0, v1, p3}, LaM/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;Lcom/google/googlenav/common/io/j;)V

    .line 152
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;Lcom/google/googlenav/common/io/j;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 156
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 158
    :try_start_a
    invoke-static {v1, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 159
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p3, v0, p2}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_14} :catch_1c

    .line 165
    :goto_14
    return-void

    .line 160
    :catch_15
    move-exception v0

    .line 161
    const-string v1, "-Error saving featureSet"

    invoke-static {p3, v0, v1}, LaM/a;->a(Lcom/google/googlenav/common/io/j;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_14

    .line 162
    :catch_1c
    move-exception v0

    .line 163
    const-string v1, "-OOME saving featureSet"

    invoke-static {p3, v0, v1}, LaM/a;->a(Lcom/google/googlenav/common/io/j;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_14
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 102
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAVED_BGFS_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, LaM/b;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    iget-object v0, p0, LaM/b;->b:Lcom/google/googlenav/F;

    if-nez v0, :cond_47

    .line 106
    invoke-interface {v1, v2}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 107
    iget-object v0, p0, LaM/b;->h:LaM/a;

    invoke-static {v0}, LaM/a;->a(LaM/a;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, LaM/b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :goto_33
    iget-object v0, p0, LaM/b;->f:LaM/g;

    if-eqz v0, :cond_46

    .line 122
    iget-object v0, p0, LaM/b;->g:Lcom/google/googlenav/android/Y;

    if-eqz v0, :cond_66

    .line 123
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, LaM/b;->g:Lcom/google/googlenav/android/Y;

    new-instance v2, LaM/c;

    invoke-direct {v2, p0}, LaM/c;-><init>(LaM/b;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 134
    :cond_46
    :goto_46
    return-void

    .line 109
    :cond_47
    iget v0, p0, LaM/b;->a:I

    packed-switch v0, :pswitch_data_6c

    .line 117
    :goto_4c
    iget-object v0, p0, LaM/b;->h:LaM/a;

    invoke-static {v0}, LaM/a;->a(LaM/a;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, LaM/b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, LaM/b;->b:Lcom/google/googlenav/F;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 111
    :pswitch_5e
    iget-object v0, p0, LaM/b;->b:Lcom/google/googlenav/F;

    check-cast v0, Lcom/google/googlenav/aW;

    invoke-direct {p0, v0, v2, v1}, LaM/b;->a(Lcom/google/googlenav/aW;Ljava/lang/String;Lcom/google/googlenav/common/io/j;)V

    goto :goto_4c

    .line 131
    :cond_66
    iget-object v0, p0, LaM/b;->f:LaM/g;

    invoke-interface {v0}, LaM/g;->a()V

    goto :goto_46

    .line 109
    :pswitch_data_6c
    .packed-switch 0x3
        :pswitch_5e
    .end packed-switch
.end method

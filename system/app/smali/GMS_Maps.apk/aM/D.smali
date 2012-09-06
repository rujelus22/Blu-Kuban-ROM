.class LaM/d;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:LaM/f;

.field final synthetic f:Lcom/google/googlenav/android/Y;

.field final synthetic g:LaM/a;


# direct methods
.method constructor <init>(LaM/a;LY/c;ILaM/f;Lcom/google/googlenav/android/Y;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, LaM/d;->g:LaM/a;

    iput p3, p0, LaM/d;->a:I

    iput-object p4, p0, LaM/d;->b:LaM/f;

    iput-object p5, p0, LaM/d;->f:Lcom/google/googlenav/android/Y;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/j;Ljava/io/DataInput;)Lcom/google/googlenav/F;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 223
    new-instance v1, Lcom/google/googlenav/aW;

    invoke-direct {v1}, Lcom/google/googlenav/aW;-><init>()V

    .line 225
    :try_start_5
    invoke-virtual {v1, p2}, Lcom/google/googlenav/aW;->a(Ljava/io/DataInput;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_22

    .line 231
    :goto_8
    const-string v0, "SAVED_BGFS_EXTRA_3"

    invoke-static {p1, v0}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/io/j;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_30

    .line 235
    :try_start_10
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ag;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v2, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 237
    const/16 v2, 0xf

    const-wide/high16 v3, -0x8000

    invoke-static {v0, v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/aW;->a(J)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_21} :catch_29

    .line 248
    :goto_21
    return-object v1

    .line 226
    :catch_22
    move-exception v0

    .line 227
    const-string v2, "-Error loading featureSet"

    invoke-static {p1, v0, v2}, LaM/a;->a(Lcom/google/googlenav/common/io/j;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_8

    .line 240
    :catch_29
    move-exception v0

    .line 241
    const-string v2, "-Error saving featureSet"

    invoke-static {p1, v0, v2}, LaM/a;->a(Lcom/google/googlenav/common/io/j;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_21

    .line 245
    :cond_30
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/aW;->a(J)V

    goto :goto_21
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 198
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAVED_BGFS_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, LaM/d;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    const/4 v0, 0x0

    .line 203
    invoke-static {v1, v2}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/io/j;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v2

    .line 204
    if-eqz v2, :cond_38

    .line 205
    iget v3, p0, LaM/d;->a:I

    packed-switch v3, :pswitch_data_48

    .line 214
    :goto_29
    iget-object v1, p0, LaM/d;->g:LaM/a;

    invoke-static {v1}, LaM/a;->a(LaM/a;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, LaM/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_38
    iget-object v1, p0, LaM/d;->g:LaM/a;

    iget-object v2, p0, LaM/d;->b:LaM/f;

    iget-object v3, p0, LaM/d;->f:Lcom/google/googlenav/android/Y;

    invoke-static {v1, v0, v2, v3}, LaM/a;->a(LaM/a;Lcom/google/googlenav/F;LaM/f;Lcom/google/googlenav/android/Y;)V

    .line 217
    return-void

    .line 207
    :pswitch_42
    invoke-direct {p0, v1, v2}, LaM/d;->a(Lcom/google/googlenav/common/io/j;Ljava/io/DataInput;)Lcom/google/googlenav/F;

    move-result-object v0

    goto :goto_29

    .line 205
    nop

    :pswitch_data_48
    .packed-switch 0x3
        :pswitch_42
    .end packed-switch
.end method

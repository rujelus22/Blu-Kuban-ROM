.class public Lcom/google/googlenav/ui/wizard/cw;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/T;


# instance fields
.field private final a:I


# direct methods
.method public static a(Ljava/lang/String;)LT/f;
    .registers 3
    .parameter

    .prologue
    .line 234
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 235
    new-instance v1, LT/f;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v0}, LT/f;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_1a} :catch_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_24

    move-object v0, v1

    .line 242
    :goto_1b
    return-object v0

    .line 237
    :catch_1c
    move-exception v0

    .line 238
    const-string v1, "HISTORY_SUMMARY_WIZARD"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    :goto_22
    const/4 v0, 0x0

    goto :goto_1b

    .line 239
    :catch_24
    move-exception v0

    .line 240
    const-string v1, "HISTORY_SUMMARY_WIZARD"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method private a(Lcom/google/googlenav/ui/wizard/cC;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v0

    .line 205
    new-instance v1, Lcom/google/googlenav/ui/wizard/cz;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/google/googlenav/ui/wizard/cz;-><init>(Lcom/google/googlenav/ui/wizard/cw;LY/c;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/wizard/cC;)V

    .line 229
    invoke-virtual {v1}, LY/b;->g()V

    .line 230
    return-void
.end method


# virtual methods
.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 275
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 276
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 277
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cw;->a()V

    .line 278
    const/4 v0, 0x1

    .line 282
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x3

    goto :goto_11
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 247
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cw;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 248
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 249
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/at;

    invoke-direct {v1, p1, p0}, Lcom/google/googlenav/ui/view/dialog/at;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/wizard/cw;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/cw;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 250
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cw;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 254
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/googlenav/ui/wizard/cC;

    sget-object v2, Lcom/google/googlenav/ui/wizard/cC;->a:Lcom/google/googlenav/ui/wizard/cC;

    aput-object v2, v1, v0

    sget-object v2, Lcom/google/googlenav/ui/wizard/cC;->b:Lcom/google/googlenav/ui/wizard/cC;

    aput-object v2, v1, v3

    const/4 v2, 0x2

    sget-object v3, Lcom/google/googlenav/ui/wizard/cC;->c:Lcom/google/googlenav/ui/wizard/cC;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/google/googlenav/ui/wizard/cC;->d:Lcom/google/googlenav/ui/wizard/cC;

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_2f
    if-ge v0, v2, :cond_49

    aget-object v3, v1, v0

    .line 256
    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/cC;->a()I

    move-result v4

    invoke-static {p1, v4}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 257
    invoke-direct {p0, v3, p1}, Lcom/google/googlenav/ui/wizard/cw;->a(Lcom/google/googlenav/ui/wizard/cC;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 254
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 261
    :cond_43
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cw;->a()V

    .line 262
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cw;->e()V

    .line 264
    :cond_49
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/iS;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 151
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbq/G;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 154
    sget-object v1, Lcom/google/googlenav/ui/wizard/cB;->a:[I

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/iS;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_40

    move v1, v0

    .line 166
    :goto_14
    const/4 v3, 0x4

    invoke-static {p2, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 168
    const/4 v1, 0x1

    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 169
    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cw;->d:Lcom/google/googlenav/ui/wizard/ju;

    new-instance v3, Lcom/google/googlenav/ui/wizard/cy;

    invoke-direct {v3, p0, p1}, Lcom/google/googlenav/ui/wizard/cy;-><init>(Lcom/google/googlenav/ui/wizard/cw;Lcom/google/googlenav/ui/wizard/iS;)V

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/wizard/iS;ZLcom/google/googlenav/ui/wizard/iR;)V

    .line 194
    return-void

    .line 156
    :pswitch_30
    invoke-static {}, Lcom/google/googlenav/friend/af;->q()V

    .line 157
    const/16 v1, 0xe

    .line 158
    const/16 v0, 0x10

    .line 159
    goto :goto_14

    .line 161
    :pswitch_38
    invoke-static {}, Lcom/google/googlenav/friend/af;->r()V

    .line 162
    const/16 v1, 0xf

    .line 163
    const/16 v0, 0x11

    goto :goto_14

    .line 154
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_30
        :pswitch_38
    .end packed-switch
.end method

.method protected b()V
    .registers 8

    .prologue
    .line 136
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/friend/S;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/google/googlenav/ui/wizard/cw;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/friend/S;-><init>(Lcom/google/googlenav/friend/T;I)V

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 140
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x1bd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 142
    invoke-static {}, Lcom/google/googlenav/friend/af;->i()V

    .line 143
    return-void
.end method

.method public e()V
    .registers 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/googlenav/ui/wizard/cx;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/cx;-><init>(Lcom/google/googlenav/ui/wizard/cw;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(ZLcom/google/googlenav/ui/wizard/dk;)V

    .line 123
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    .line 269
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 270
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cw;->a()V

    .line 271
    return-void
.end method

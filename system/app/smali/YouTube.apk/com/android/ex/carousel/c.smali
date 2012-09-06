.class final Lcom/android/ex/carousel/c;
.super Landroid/renderscript/RenderScript$RSMessageHandler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/android/ex/carousel/b;


# direct methods
.method constructor <init>(Lcom/android/ex/carousel/b;)V
    .registers 2
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/ex/carousel/c;->a:Lcom/android/ex/carousel/b;

    invoke-direct {p0}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 202
    iget-object v0, p0, Lcom/android/ex/carousel/c;->a:Lcom/android/ex/carousel/b;

    invoke-static {v0}, Lcom/android/ex/carousel/b;->a(Lcom/android/ex/carousel/b;)Lcom/android/ex/carousel/d;

    move-result-object v0

    if-nez v0, :cond_e

    .line 260
    :goto_d
    :sswitch_d
    return-void

    .line 203
    :cond_e
    iget v0, p0, Lcom/android/ex/carousel/c;->mID:I

    sparse-switch v0, :sswitch_data_104

    .line 258
    const-string v0, "CarouselRS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown RSMessage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/ex/carousel/c;->mID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 205
    :sswitch_2a
    iget-object v0, p0, Lcom/android/ex/carousel/c;->a:Lcom/android/ex/carousel/b;

    invoke-static {v0}, Lcom/android/ex/carousel/b;->a(Lcom/android/ex/carousel/b;)Lcom/android/ex/carousel/d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/c;->mData:[I

    aget v1, v1, v7

    invoke-interface {v0, v1}, Lcom/android/ex/carousel/d;->a(I)V

    goto :goto_d

    .line 209
    :sswitch_38
    iget-object v0, p0, Lcom/android/ex/carousel/c;->a:Lcom/android/ex/carousel/b;

    invoke-static {v0}, Lcom/android/ex/carousel/b;->a(Lcom/android/ex/carousel/b;)Lcom/android/ex/carousel/d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/c;->mData:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/android/ex/carousel/c;->mData:[I

    iget-object v2, p0, Lcom/android/ex/carousel/c;->mData:[I

    invoke-interface {v0, v1}, Lcom/android/ex/carousel/d;->b(I)V

    goto :goto_d

    .line 213
    :sswitch_4a
    new-array v0, v4, [I

    iget-object v1, p0, Lcom/android/ex/carousel/c;->mData:[I

    aget v1, v1, v3

    aput v1, v0, v7

    iget-object v1, p0, Lcom/android/ex/carousel/c;->mData:[I

    aget v1, v1, v4

    aput v1, v0, v3

    .line 214
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/ex/carousel/c;->mData:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/ex/carousel/c;->mData:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/ex/carousel/c;->mData:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/android/ex/carousel/c;->mData:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 215
    iget-object v1, p0, Lcom/android/ex/carousel/c;->a:Lcom/android/ex/carousel/b;

    invoke-static {v1}, Lcom/android/ex/carousel/b;->a(Lcom/android/ex/carousel/b;)Lcom/android/ex/carousel/d;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/carousel/c;->mData:[I

    aget v2, v2, v7

    invoke-interface {v1, v2, v0}, Lcom/android/ex/carousel/d;->a(I[I)V

    goto :goto_d

    .line 219
    :sswitch_7f
    iget-object v0, p0, Lcom/android/ex/carousel/c;->a:Lcom/android/ex/carousel/b;

    invoke-static {v0}, Lcom/android/ex/carousel/b;->a(Lcom/android/ex/carousel/b;)Lcom/android/ex/carousel/d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/c;->mData:[I

    aget v1, v1, v7

    invoke-interface {v0, v1}, Lcom/android/ex/carousel/d;->c(I)V

    goto :goto_d

    .line 223
    :sswitch_8d
    iget-object v0, p0, Lcom/android/ex/carousel/c;->a:Lcom/android/ex/carousel/b;

    iget-object v1, p0, Lcom/android/ex/carousel/c;->mData:[I

    aget v1, v1, v7

    invoke-virtual {v0, v1, v6}, Lcom/android/ex/carousel/b;->a(ILandroid/graphics/Bitmap;)V

    .line 224
    iget-object v0, p0, Lcom/android/ex/carousel/c;->a:Lcom/android/ex/carousel/b;

    invoke-static {v0}, Lcom/android/ex/carousel/b;->a(Lcom/android/ex/carousel/b;)Lcom/android/ex/carousel/d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/c;->mData:[I

    aget v1, v1, v7

    invoke-interface {v0, v1}, Lcom/android/ex/carousel/d;->d(I)V

    goto/16 :goto_d

    .line 228
    :sswitch_a5
    iget-object v0, p0, Lcom/android/ex/carousel/c;->a:Lcom/android/ex/carousel/b;

    invoke-static {v0}, Lcom/android/ex/carousel/b;->a(Lcom/android/ex/carousel/b;)Lcom/android/ex/carousel/d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/c;->mData:[I

    aget v1, v1, v7

    invoke-interface {v0, v1}, Lcom/android/ex/carousel/d;->e(I)V

    goto/16 :goto_d

    .line 232
    :sswitch_b4
    iget-object v0, p0, Lcom/android/ex/carousel/c;->a:Lcom/android/ex/carousel/b;

    iget-object v1, p0, Lcom/android/ex/carousel/c;->mData:[I

    aget v1, v1, v7

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/ex/carousel/b;->a(IFFFFLandroid/graphics/Bitmap;)V

    .line 233
    iget-object v0, p0, Lcom/android/ex/carousel/c;->a:Lcom/android/ex/carousel/b;

    invoke-static {v0}, Lcom/android/ex/carousel/b;->a(Lcom/android/ex/carousel/b;)Lcom/android/ex/carousel/d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/c;->mData:[I

    aget v1, v1, v7

    invoke-interface {v0, v1}, Lcom/android/ex/carousel/d;->f(I)V

    goto/16 :goto_d

    .line 237
    :sswitch_cf
    iget-object v0, p0, Lcom/android/ex/carousel/c;->a:Lcom/android/ex/carousel/b;

    invoke-static {v0}, Lcom/android/ex/carousel/b;->a(Lcom/android/ex/carousel/b;)Lcom/android/ex/carousel/d;

    iget-object v0, p0, Lcom/android/ex/carousel/c;->mData:[I

    goto/16 :goto_d

    .line 241
    :sswitch_d8
    iget-object v0, p0, Lcom/android/ex/carousel/c;->a:Lcom/android/ex/carousel/b;

    iget-object v1, p0, Lcom/android/ex/carousel/c;->mData:[I

    aget v1, v1, v7

    invoke-virtual {v0, v1, v6}, Lcom/android/ex/carousel/b;->a(ILandroid/renderscript/Mesh;)V

    .line 242
    iget-object v0, p0, Lcom/android/ex/carousel/c;->a:Lcom/android/ex/carousel/b;

    invoke-static {v0}, Lcom/android/ex/carousel/b;->a(Lcom/android/ex/carousel/b;)Lcom/android/ex/carousel/d;

    iget-object v0, p0, Lcom/android/ex/carousel/c;->mData:[I

    goto/16 :goto_d

    .line 246
    :sswitch_ea
    iget-object v0, p0, Lcom/android/ex/carousel/c;->a:Lcom/android/ex/carousel/b;

    invoke-static {v0}, Lcom/android/ex/carousel/b;->a(Lcom/android/ex/carousel/b;)Lcom/android/ex/carousel/d;

    goto/16 :goto_d

    .line 250
    :sswitch_f1
    iget-object v0, p0, Lcom/android/ex/carousel/c;->a:Lcom/android/ex/carousel/b;

    invoke-static {v0}, Lcom/android/ex/carousel/b;->a(Lcom/android/ex/carousel/b;)Lcom/android/ex/carousel/d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/c;->mData:[I

    aget v1, v1, v7

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/ex/carousel/d;->a(F)V

    goto/16 :goto_d

    .line 203
    :sswitch_data_104
    .sparse-switch
        0x64 -> :sswitch_2a
        0x69 -> :sswitch_38
        0x6e -> :sswitch_4a
        0xc8 -> :sswitch_7f
        0xd2 -> :sswitch_8d
        0x12c -> :sswitch_cf
        0x136 -> :sswitch_d8
        0x190 -> :sswitch_ea
        0x1f4 -> :sswitch_f1
        0x258 -> :sswitch_a5
        0x262 -> :sswitch_b4
        0x3e8 -> :sswitch_d
    .end sparse-switch
.end method

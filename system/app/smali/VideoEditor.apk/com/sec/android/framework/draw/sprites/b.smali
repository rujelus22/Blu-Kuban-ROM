.class public final Lcom/sec/android/framework/draw/sprites/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

.field public b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/sec/android/framework/draw/sprites/StrokeSprite;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/sec/android/framework/draw/sprites/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    .line 11
    iput-object p2, p0, Lcom/sec/android/framework/draw/sprites/b;->b:Landroid/graphics/Bitmap;

    .line 12
    return-void
.end method

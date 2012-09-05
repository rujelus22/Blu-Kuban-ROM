.class public Lcom/sec/android/framework/draw/sprites/SpriteFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/framework/draw/sprites/ISpriteFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createImageSprite(FFII)Lcom/sec/android/framework/draw/sprites/c;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    new-instance v0, Lcom/sec/android/framework/draw/sprites/c;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/sprites/c;-><init>()V

    .line 34
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/framework/draw/sprites/c;->a(FFII)V

    .line 36
    new-instance v1, Lcom/sec/android/framework/draw/sprites/a/d;

    invoke-direct {v1, v0}, Lcom/sec/android/framework/draw/sprites/a/d;-><init>(Lcom/sec/android/framework/draw/sprites/AbstractSprite;)V

    .line 37
    new-instance v2, Lcom/sec/android/framework/draw/sprites/a/b;

    invoke-direct {v2}, Lcom/sec/android/framework/draw/sprites/a/b;-><init>()V

    .line 38
    new-instance v3, Lcom/sec/android/framework/draw/sprites/a/e;

    invoke-direct {v3}, Lcom/sec/android/framework/draw/sprites/a/e;-><init>()V

    .line 40
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/framework/draw/sprites/c;->setBehavior(Lcom/sec/android/framework/draw/sprites/a/a;Lcom/sec/android/framework/draw/sprites/a/c;Lcom/sec/android/framework/draw/sprites/a/g;)V

    .line 42
    return-object v0
.end method

.method public createStrokeSprite(Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;FI)Lcom/sec/android/framework/draw/sprites/StrokeSprite;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    new-instance v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;-><init>()V

    .line 18
    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->initializePathAttributes()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->initializeStrokeAttributes(Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;FI)V

    .line 21
    new-instance v1, Lcom/sec/android/framework/draw/sprites/a/d;

    invoke-direct {v1, v0}, Lcom/sec/android/framework/draw/sprites/a/d;-><init>(Lcom/sec/android/framework/draw/sprites/AbstractSprite;)V

    .line 22
    new-instance v2, Lcom/sec/android/framework/draw/sprites/a/b;

    invoke-direct {v2}, Lcom/sec/android/framework/draw/sprites/a/b;-><init>()V

    .line 23
    new-instance v3, Lcom/sec/android/framework/draw/sprites/a/e;

    invoke-direct {v3}, Lcom/sec/android/framework/draw/sprites/a/e;-><init>()V

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setBehavior(Lcom/sec/android/framework/draw/sprites/a/a;Lcom/sec/android/framework/draw/sprites/a/c;Lcom/sec/android/framework/draw/sprites/a/g;)V

    .line 27
    return-object v0
.end method

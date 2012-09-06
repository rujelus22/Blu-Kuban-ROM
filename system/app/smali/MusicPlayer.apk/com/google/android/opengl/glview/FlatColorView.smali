.class public Lcom/google/android/opengl/glview/FlatColorView;
.super Lcom/google/android/opengl/glview/GLView;
.source "FlatColorView.java"


# instance fields
.field private mColor:[F


# direct methods
.method public constructor <init>(I[F)V
    .registers 3
    .parameter "id"
    .parameter "color"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLView;-><init>(I)V

    .line 21
    iput-object p2, p0, Lcom/google/android/opengl/glview/FlatColorView;->mColor:[F

    .line 22
    return-void
.end method


# virtual methods
.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .registers 12
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    .line 37
    const/4 v8, 0x0

    .line 38
    .local v8, animating:Z
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/FlatColorView;->x()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/FlatColorView;->y()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/FlatColorView;->width()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/FlatColorView;->height()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/opengl/glview/FlatColorView;->mColor:[F

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/opengl/glview/GLCanvas;->drawFlatRect(FFFF[FIZ)V

    .line 39
    return v8
.end method

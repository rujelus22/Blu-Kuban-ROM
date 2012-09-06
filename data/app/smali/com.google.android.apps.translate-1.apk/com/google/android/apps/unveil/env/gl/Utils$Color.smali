.class public Lcom/google/android/apps/unveil/env/gl/Utils$Color;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/gl/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Color"
.end annotation


# static fields
.field public static BLACK:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

.field public static BLUE:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

.field public static GREEN:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

.field public static RED:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

.field public static WHITE:Lcom/google/android/apps/unveil/env/gl/Utils$Color;


# instance fields
.field public a:F

.field public b:F

.field public g:F

.field public r:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 49
    new-instance v0, Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/google/android/apps/unveil/env/gl/Utils$Color;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->BLACK:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    .line 50
    new-instance v0, Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/google/android/apps/unveil/env/gl/Utils$Color;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->RED:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    .line 51
    new-instance v0, Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    invoke-direct {v0, v2, v1, v2, v1}, Lcom/google/android/apps/unveil/env/gl/Utils$Color;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->GREEN:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    .line 52
    new-instance v0, Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    invoke-direct {v0, v2, v2, v1, v1}, Lcom/google/android/apps/unveil/env/gl/Utils$Color;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->BLUE:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    .line 53
    new-instance v0, Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/android/apps/unveil/env/gl/Utils$Color;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->WHITE:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->r:F

    .line 62
    iput p2, p0, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->g:F

    .line 63
    iput p3, p0, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->b:F

    .line 64
    iput p4, p0, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->a:F

    .line 65
    return-void
.end method

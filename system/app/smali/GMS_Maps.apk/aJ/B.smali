.class LaJ/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:Ljava/lang/Runnable;

.field private d:Z


# direct methods
.method public constructor <init>(FFLjava/lang/Runnable;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, LaJ/b;->a:F

    .line 104
    iput p2, p0, LaJ/b;->b:F

    .line 105
    iput-object p3, p0, LaJ/b;->c:Ljava/lang/Runnable;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, LaJ/b;->d:Z

    .line 107
    return-void
.end method

.method private static a(FFF)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const v3, 0x3a83126f

    .line 125
    cmpg-float v2, p1, p2

    if-gez v2, :cond_18

    .line 126
    sub-float v2, p1, v3

    cmpg-float v2, v2, p0

    if-gtz v2, :cond_16

    add-float v2, p2, v3

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_16

    .line 128
    :cond_15
    :goto_15
    return v0

    :cond_16
    move v0, v1

    .line 126
    goto :goto_15

    .line 128
    :cond_18
    sub-float v2, p2, v3

    cmpg-float v2, v2, p0

    if-gtz v2, :cond_24

    add-float v2, p1, v3

    cmpg-float v2, p0, v2

    if-lez v2, :cond_15

    :cond_24
    move v0, v1

    goto :goto_15
.end method


# virtual methods
.method public a(FFFF)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    iget-boolean v0, p0, LaJ/b;->d:Z

    if-nez v0, :cond_1c

    iget v0, p0, LaJ/b;->a:F

    invoke-static {v0, p1, p2}, LaJ/b;->a(FFF)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, LaJ/b;->b:F

    invoke-static {v0, p3, p4}, LaJ/b;->a(FFF)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, LaJ/b;->d:Z

    .line 118
    iget-object v0, p0, LaJ/b;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 120
    :cond_1c
    iget-boolean v0, p0, LaJ/b;->d:Z

    return v0
.end method

.class public Lcom/google/googlenav/ui/view/android/aK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lag/f;


# direct methods
.method public constructor <init>(ZILjava/lang/String;ILag/f;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/aK;->a:Z

    .line 46
    iput p2, p0, Lcom/google/googlenav/ui/view/android/aK;->b:I

    .line 47
    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/aK;->c:Ljava/lang/String;

    .line 48
    iput p4, p0, Lcom/google/googlenav/ui/view/android/aK;->d:I

    .line 49
    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/aK;->e:Lag/f;

    .line 50
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aK;->a:Z

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/google/googlenav/ui/view/android/aK;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aK;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/google/googlenav/ui/view/android/aK;->d:I

    return v0
.end method

.method public e()Lag/f;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aK;->e:Lag/f;

    return-object v0
.end method

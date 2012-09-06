.class public abstract Lcom/google/googlenav/ui/view/android/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Lcom/google/googlenav/ui/view/a;


# direct methods
.method protected constructor <init>(JJLcom/google/googlenav/ui/view/a;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/google/googlenav/ui/view/android/Y;->a:J

    .line 22
    iput-wide p3, p0, Lcom/google/googlenav/ui/view/android/Y;->b:J

    .line 23
    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/Y;->c:Lcom/google/googlenav/ui/view/a;

    .line 24
    return-void
.end method


# virtual methods
.method public d()J
    .registers 3

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/googlenav/ui/view/android/Y;->a:J

    return-wide v0
.end method

.method public e()J
    .registers 3

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/googlenav/ui/view/android/Y;->b:J

    return-wide v0
.end method

.method public f()Lcom/google/googlenav/ui/view/a;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Y;->c:Lcom/google/googlenav/ui/view/a;

    return-object v0
.end method

.class public Lcom/google/googlenav/ui/android/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/android/HeaderContainer;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/HeaderContainer;)V
    .registers 2
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/googlenav/ui/android/ab;->a:Lcom/google/googlenav/ui/android/HeaderContainer;

    .line 23
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ab;->a:Lcom/google/googlenav/ui/android/HeaderContainer;

    if-nez v0, :cond_6

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ab;->a:Lcom/google/googlenav/ui/android/HeaderContainer;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/HeaderContainer;->a()I

    move-result v0

    goto :goto_5
.end method

.method public a(Lcom/google/googlenav/ui/android/aa;)V
    .registers 3
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ab;->a:Lcom/google/googlenav/ui/android/HeaderContainer;

    if-eqz v0, :cond_9

    .line 33
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ab;->a:Lcom/google/googlenav/ui/android/HeaderContainer;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/HeaderContainer;->a(Lcom/google/googlenav/ui/android/aa;)V

    .line 35
    :cond_9
    return-void
.end method

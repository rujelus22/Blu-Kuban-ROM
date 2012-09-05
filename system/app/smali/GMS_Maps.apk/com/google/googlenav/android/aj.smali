.class public Lcom/google/googlenav/android/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/ah;


# instance fields
.field private final a:Lcom/google/googlenav/android/ai;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/ai;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/android/aj;->a:Lcom/google/googlenav/android/ai;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "where is "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/google/googlenav/android/aj;->a:Lcom/google/googlenav/android/ai;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/ai;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/google/googlenav/android/aj;->a:Lcom/google/googlenav/android/ai;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/ai;->e(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "where is "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

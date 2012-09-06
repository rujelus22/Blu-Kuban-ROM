.class public Lcom/google/googlenav/android/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/ad;


# instance fields
.field private final a:Lcom/google/googlenav/android/ae;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/ae;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/ae;

    .line 157
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 161
    const-string v0, "where is "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_19

    .line 163
    iget-object v1, p0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/ae;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/ae;->showFriend(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 166
    iget-object v1, p0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/ae;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/ae;->searchFor(Ljava/lang/String;)V

    .line 169
    :cond_19
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 173
    const-string v0, "where is "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

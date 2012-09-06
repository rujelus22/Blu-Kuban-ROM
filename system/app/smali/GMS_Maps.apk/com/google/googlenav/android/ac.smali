.class public Lcom/google/googlenav/android/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/ad;


# instance fields
.field private final a:Lcom/google/googlenav/android/ae;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/ae;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/google/googlenav/android/ac;->a:Lcom/google/googlenav/android/ae;

    .line 186
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/googlenav/android/ac;->a:Lcom/google/googlenav/android/ae;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/ae;->searchFor(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 199
    const/4 v0, 0x1

    return v0
.end method

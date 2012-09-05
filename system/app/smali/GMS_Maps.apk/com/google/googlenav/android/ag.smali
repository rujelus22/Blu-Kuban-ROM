.class public Lcom/google/googlenav/android/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/ah;


# instance fields
.field private final a:Lcom/google/googlenav/android/ai;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/ai;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/android/ag;->a:Lcom/google/googlenav/android/ai;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/android/ag;->a:Lcom/google/googlenav/android/ai;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/ai;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

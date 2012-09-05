.class public Lao/a;
.super Ljava/lang/Object;

# interfaces
.implements Lao/d;


# instance fields
.field private final a:Lao/d;


# direct methods
.method public constructor <init>(Lao/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lao/a;->a:Lao/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    iget-object v0, p0, Lao/a;->a:Lao/d;

    invoke-interface {v0, p1, p2}, Lao/d;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

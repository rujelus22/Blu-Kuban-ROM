.class public Lbb/A;
.super Ljava/lang/Object;

# interfaces
.implements Lbb/E;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbb/A;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbb/A;->b:Ljava/lang/String;

    iput-object p2, p0, Lbb/A;->a:Ljava/lang/String;

    return-void
.end method

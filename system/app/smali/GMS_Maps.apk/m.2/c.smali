.class public Lm/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lm/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lm/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lm/c;->b:Lm/b;

    return-void
.end method

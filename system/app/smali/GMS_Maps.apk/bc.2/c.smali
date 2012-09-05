.class public final Lbc/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lbc/a;

.field public final b:Lbc/a;


# direct methods
.method public constructor <init>(Lbc/a;Lbc/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbc/c;->a:Lbc/a;

    iput-object p2, p0, Lbc/c;->b:Lbc/a;

    return-void
.end method

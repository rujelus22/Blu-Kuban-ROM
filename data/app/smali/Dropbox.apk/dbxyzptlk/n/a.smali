.class abstract Ldbxyzptlk/n/a;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Ldbxyzptlk/n/a;->a:Ljava/lang/Object;

    .line 16
    iput-object p2, p0, Ldbxyzptlk/n/a;->b:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ldbxyzptlk/n/b;
    .registers 5
    .parameter

    .prologue
    .line 20
    new-instance v0, Ldbxyzptlk/n/b;

    iget-object v1, p0, Ldbxyzptlk/n/a;->b:Ljava/lang/String;

    iget-object v2, p0, Ldbxyzptlk/n/a;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2}, Ldbxyzptlk/n/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

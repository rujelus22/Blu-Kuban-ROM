.class final Ldbxyzptlk/v/L;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/v/M;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1087
    iput-object p1, p0, Ldbxyzptlk/v/L;->a:Ljava/lang/Object;

    .line 1088
    return-void
.end method


# virtual methods
.method public final a(Ldbxyzptlk/v/z;)Ldbxyzptlk/v/M;
    .registers 2
    .parameter

    .prologue
    .line 1095
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1091
    iget-object v0, p0, Ldbxyzptlk/v/L;->a:Ljava/lang/Object;

    return-object v0
.end method

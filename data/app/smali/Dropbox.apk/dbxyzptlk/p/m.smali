.class public final Ldbxyzptlk/p/m;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field public static final c:Ldbxyzptlk/p/n;


# instance fields
.field public final a:Ldbxyzptlk/l/k;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 661
    new-instance v0, Ldbxyzptlk/p/n;

    invoke-direct {v0}, Ldbxyzptlk/p/n;-><init>()V

    sput-object v0, Ldbxyzptlk/p/m;->c:Ldbxyzptlk/p/n;

    return-void
.end method

.method public constructor <init>(Ldbxyzptlk/l/k;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    iput-object p1, p0, Ldbxyzptlk/p/m;->a:Ldbxyzptlk/l/k;

    .line 658
    iput-object p2, p0, Ldbxyzptlk/p/m;->b:Ljava/lang/String;

    .line 659
    return-void
.end method

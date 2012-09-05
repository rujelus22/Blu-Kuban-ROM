.class public final Lji;
.super Lhg;
.source "a"


# instance fields
.field protected final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lfa;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfa;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lhg;-><init>(Ljava/lang/String;Lfa;)V

    .line 37
    iput-object p3, p0, Lji;->c:Ljava/lang/Class;

    .line 38
    iput-object p4, p0, Lji;->d:Ljava/lang/String;

    .line 39
    return-void
.end method

.class public final Ldbxyzptlk/p/c;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J

.field protected d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JJZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Ldbxyzptlk/p/c;->a:Ljava/lang/String;

    .line 38
    iput-wide p2, p0, Ldbxyzptlk/p/c;->b:J

    .line 39
    iput-wide p4, p0, Ldbxyzptlk/p/c;->c:J

    .line 40
    iput-boolean p6, p0, Ldbxyzptlk/p/c;->d:Z

    .line 41
    return-void
.end method

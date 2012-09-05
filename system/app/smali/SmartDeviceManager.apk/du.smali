.class public final Ldu;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field public final a:Ldv;

.field public final b:J


# direct methods
.method public constructor <init>(Ldv;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Ldu;->a:Ldv;

    .line 10
    iput-wide p2, p0, Ldu;->b:J

    .line 11
    return-void
.end method

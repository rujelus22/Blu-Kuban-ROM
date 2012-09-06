.class public final LaP/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LaP/a;

.field public final b:LaP/a;


# direct methods
.method public constructor <init>(LaP/a;LaP/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, LaP/c;->a:LaP/a;

    .line 19
    iput-object p2, p0, LaP/c;->b:LaP/a;

    .line 20
    return-void
.end method

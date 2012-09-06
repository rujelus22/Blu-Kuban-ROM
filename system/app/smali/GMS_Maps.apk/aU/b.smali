.class public LaU/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LaU/c;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(LaU/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, LaU/b;->a:LaU/c;

    .line 44
    iput-object p2, p0, LaU/b;->b:Ljava/lang/String;

    .line 45
    iput-object p3, p0, LaU/b;->c:Ljava/lang/String;

    .line 46
    return-void
.end method

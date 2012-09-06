.class public Lx/k;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private a:Lx/n;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method


# virtual methods
.method public a(Lx/n;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lx/k;->a:Lx/n;

    .line 53
    return-void
.end method

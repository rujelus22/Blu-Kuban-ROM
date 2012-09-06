.class public Lcom/google/googlenav/bQ;
.super Lcom/google/googlenav/bP;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1114
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/bP;-><init>(Ljava/lang/String;Z)V

    .line 1115
    iput-object p3, p0, Lcom/google/googlenav/bQ;->a:Ljava/lang/String;

    .line 1116
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/google/googlenav/bQ;->a:Ljava/lang/String;

    return-object v0
.end method

.class public Laj/d;
.super Laj/z;
.source "SourceFile"


# instance fields
.field private final a:Laj/j;


# direct methods
.method public constructor <init>(ILaj/j;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Laj/z;-><init>(I)V

    .line 30
    iput-object p2, p0, Laj/d;->a:Laj/j;

    .line 31
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Laj/d;->a:Laj/j;

    invoke-virtual {v0}, Laj/j;->h()F

    move-result v0

    return v0
.end method

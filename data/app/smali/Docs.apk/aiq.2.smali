.class public abstract Laiq;
.super Ljava/lang/Object;
.source "GenericMapMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lajv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajv",
            "<TK0;TV0;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lajv;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lajv",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Laiq;->a:Lajv;

    sget-object v1, Lair;->a:Lair;

    invoke-static {v0, v1}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    return-object v0
.end method

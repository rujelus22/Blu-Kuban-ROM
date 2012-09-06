.class public abstract Lbk/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbk/r;


# static fields
.field private static final a:Lbk/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    invoke-static {}, Lbk/i;->a()Lbk/i;

    move-result-object v0

    sput-object v0, Lbk/c;->a:Lbk/i;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

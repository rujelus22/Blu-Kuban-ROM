.class public interface abstract Ll/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Ll/e;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public abstract a(Ln/am;)Ljava/util/Collection;
.end method

.method public abstract a(Ll/f;)V
.end method

.method public abstract a(Ln/m;)Z
.end method

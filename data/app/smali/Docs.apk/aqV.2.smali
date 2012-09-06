.class public final LaqV;
.super Ljava/lang/Object;
.source "Modules.java"


# static fields
.field public static final a:Lanz;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, LaqW;

    invoke-direct {v0}, LaqW;-><init>()V

    sput-object v0, LaqV;->a:Lanz;

    return-void
.end method

.class public Lcom/samsung/wimax/odb/ODB$LocalBinder;
.super Landroid/os/Binder;
.source "ODB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/odb/ODB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/odb/ODB;


# direct methods
.method public constructor <init>(Lcom/samsung/wimax/odb/ODB;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/wimax/odb/ODB$LocalBinder;->this$0:Lcom/samsung/wimax/odb/ODB;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/samsung/wimax/odb/ODB;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/wimax/odb/ODB$LocalBinder;->this$0:Lcom/samsung/wimax/odb/ODB;

    return-object v0
.end method

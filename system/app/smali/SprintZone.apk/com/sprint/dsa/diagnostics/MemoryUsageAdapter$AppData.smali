.class public Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;
.super Ljava/lang/Object;
.source "MemoryUsageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppData"
.end annotation


# instance fields
.field appIcon:Landroid/graphics/drawable/Drawable;

.field appName:Ljava/lang/String;

.field privateDirty:I

.field processId:I

.field processName:Ljava/lang/String;

.field pss:I

.field sharedDirty:I

.field final synthetic this$0:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;


# direct methods
.method public constructor <init>(Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->this$0:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

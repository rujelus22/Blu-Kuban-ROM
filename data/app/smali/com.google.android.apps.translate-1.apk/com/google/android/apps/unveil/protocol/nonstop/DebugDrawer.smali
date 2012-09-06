.class public interface abstract Lcom/google/android/apps/unveil/protocol/nonstop/DebugDrawer;
.super Ljava/lang/Object;
.source "DebugDrawer.java"


# static fields
.field public static final NO_OP:Lcom/google/android/apps/unveil/protocol/nonstop/DebugDrawer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/apps/unveil/protocol/nonstop/DebugDrawer$1;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/protocol/nonstop/DebugDrawer$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/nonstop/DebugDrawer;->NO_OP:Lcom/google/android/apps/unveil/protocol/nonstop/DebugDrawer;

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;IF)V
.end method

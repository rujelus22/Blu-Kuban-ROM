.class final Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;
.super Ljava/lang/Object;
.source "ThreePaneLayout.java"

# interfaces
.implements Lcom/android/email/activity/ThreePaneLayout$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ThreePaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 130
    new-instance v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;

    invoke-direct {v0}, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;-><init>()V

    sput-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisiblePanesChanged(I)V
    .registers 2
    .parameter "previousVisiblePanes"

    .prologue
    .line 132
    return-void
.end method

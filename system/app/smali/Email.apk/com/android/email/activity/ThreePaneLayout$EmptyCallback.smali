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
    .line 173
    new-instance v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;

    invoke-direct {v0}, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;-><init>()V

    sput-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeMessageView()V
    .registers 1

    .prologue
    .line 185
    return-void
.end method

.method public onLookChanged(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 181
    return-void
.end method

.method public onLookChangedAfterAni()V
    .registers 1

    .prologue
    .line 197
    return-void
.end method

.method public onVisiblePanesChanged(I)V
    .registers 2
    .parameter "previousVisiblePanes"

    .prologue
    .line 177
    return-void
.end method

.method public setLeftSplitType(I)V
    .registers 2
    .parameter "splitTypeNormal"

    .prologue
    .line 189
    return-void
.end method

.method public setRightSplitType(II)V
    .registers 3
    .parameter "splitTypeNormal"
    .parameter "sLeftPaneLandWidthConst"

    .prologue
    .line 193
    return-void
.end method

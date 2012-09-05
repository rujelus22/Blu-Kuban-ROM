.class Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberEnteredToast;
.super Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;
.source "ToastsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/ToastsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeetingMemberEnteredToast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/ToastsView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/ToastsView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter
    .parameter "meetingMember"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberEnteredToast;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;-><init>(Lcom/google/android/apps/plus/hangout/ToastsView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected getMessageFormatId()I
    .registers 2

    .prologue
    .line 111
    const v0, 0x7f0702ab

    return v0
.end method

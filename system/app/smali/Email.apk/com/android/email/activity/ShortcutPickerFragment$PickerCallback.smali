.class public interface abstract Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;
.super Ljava/lang/Object;
.source "ShortcutPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ShortcutPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PickerCallback"
.end annotation


# virtual methods
.method public abstract buildFilter(Lcom/android/emailcommon/provider/Account;)Ljava/lang/Integer;
.end method

.method public abstract onMissingData(ZZ)V
.end method

.method public abstract onSelected(Lcom/android/emailcommon/provider/Account;J)V
.end method

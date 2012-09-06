.class public interface abstract Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;
.super Ljava/lang/Object;
.source "ContactApiHelper.java"


# virtual methods
.method public abstract contactsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
.end method

.method public abstract cursorForFilter(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract cursorForPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract insertIntentForContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Landroid/content/Intent;
.end method

.method public abstract photoForContact(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/graphics/Bitmap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract uriForContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Landroid/net/Uri;
.end method

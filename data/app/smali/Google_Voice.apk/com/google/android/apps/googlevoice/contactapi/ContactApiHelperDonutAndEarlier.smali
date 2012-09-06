.class public Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelperDonutAndEarlier;
.super Ljava/lang/Object;
.source "ContactApiHelperDonutAndEarlier.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contactsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 8
    .parameter "contentResolver"

    .prologue
    const/4 v2, 0x0

    .line 26
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public cursorForFilter(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .parameter "contentResolver"
    .parameter "constraint"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public cursorForPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .parameter "contentResolver"
    .parameter "phoneNumber"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "resources"
    .parameter "type"
    .parameter "label"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertIntentForContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Landroid/content/Intent;
    .registers 7
    .parameter "contactInfo"

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 57
    const-string v2, ""

    .line 59
    :cond_10
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    .line 60
    .local v0, contactUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 61
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "name"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v4, "phone"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    return-object v1
.end method

.method public photoForContact(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "contentResolver"
    .parameter "id"
    .parameter "lookupKey"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public uriForContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Landroid/net/Uri;
    .registers 4
    .parameter "contactInfo"

    .prologue
    .line 48
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getLocalId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

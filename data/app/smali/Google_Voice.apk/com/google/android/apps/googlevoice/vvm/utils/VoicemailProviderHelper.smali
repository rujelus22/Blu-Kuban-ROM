.class public interface abstract Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;
.super Ljava/lang/Object;
.source "VoicemailProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;
    }
.end annotation


# virtual methods
.method public abstract delete(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V
.end method

.method public abstract deleteAll()I
.end method

.method public abstract findVoicemailBySourceData(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;
.end method

.method public abstract findVoicemailByUri(Landroid/net/Uri;)Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;
.end method

.method public abstract getAllVoicemails()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUriForVoicemailWithId(J)Landroid/net/Uri;
.end method

.method public abstract insert(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)Landroid/net/Uri;
.end method

.method public abstract setStatus(III)V
.end method

.method public abstract setVoicemailContent(Landroid/net/Uri;Ljava/io/InputStream;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setVoicemailContent(Landroid/net/Uri;[BLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract update(Landroid/net/Uri;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)I
.end method

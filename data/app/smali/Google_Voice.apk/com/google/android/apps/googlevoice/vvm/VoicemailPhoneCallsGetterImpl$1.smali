.class Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;
.super Ljava/lang/Object;
.source "VoicemailPhoneCallsGetterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->downloadContent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;

.field final synthetic val$messageId:Ljava/lang/String;

.field final synthetic val$voiceRecordingRequest:Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;

.field final synthetic val$voicemail:Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;Ljava/lang/String;Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->this$0:Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->val$messageId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->val$voiceRecordingRequest:Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;

    iput-object p4, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->val$voicemail:Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 163
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->this$0:Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;

    #calls: Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->decrementOutstandingDownloads()V
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->access$000(Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;)V

    .line 164
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_21

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got response for voicemail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->val$messageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 168
    :cond_21
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->val$voiceRecordingRequest:Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;->getFilename()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_dc

    .line 169
    const/4 v5, 0x0

    .line 170
    .local v5, out:Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 171
    .local v1, contents:Ljava/io/FileInputStream;
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->this$0:Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;

    #getter for: Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->access$100(Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;)Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->val$messageId:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getRecordingFilenameForCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, name:Ljava/lang/String;
    invoke-static {v4}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, mimetype:Ljava/lang/String;
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_57

    .line 174
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response: Download succeeded for voicemail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->val$messageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 178
    :cond_57
    :try_start_57
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->this$0:Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;

    #getter for: Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->access$200(Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 179
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->this$0:Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;

    #getter for: Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->access$300(Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->val$voicemail:Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;

    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v6, v7, v1, v3}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;->setVoicemailContent(Landroid/net/Uri;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 180
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_8c

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Copied file for voicemail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->val$messageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 184
    :cond_8c
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->val$voicemail:Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->createForUpdate(J)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v0

    .line 185
    .local v0, builder:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setHasContent(Z)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    .line 186
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->this$0:Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;

    #getter for: Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->access$300(Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->val$voicemail:Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;

    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->build()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;->update(Landroid/net/Uri;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)I
    :try_end_ad
    .catchall {:try_start_57 .. :try_end_ad} :catchall_d4
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_ad} :catch_b4

    .line 190
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 191
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 198
    .end local v0           #builder:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;
    .end local v1           #contents:Ljava/io/FileInputStream;
    .end local v3           #mimetype:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #out:Ljava/io/OutputStream;
    :cond_b3
    :goto_b3
    return-void

    .line 187
    .restart local v1       #contents:Ljava/io/FileInputStream;
    .restart local v3       #mimetype:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #out:Ljava/io/OutputStream;
    :catch_b4
    move-exception v2

    .line 188
    .local v2, e:Ljava/io/IOException;
    :try_start_b5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to copy audio for voicemail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->val$messageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_cd
    .catchall {:try_start_b5 .. :try_end_cd} :catchall_d4

    .line 190
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 191
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_b3

    .line 190
    .end local v2           #e:Ljava/io/IOException;
    :catchall_d4
    move-exception v6

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 191
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .line 194
    .end local v1           #contents:Ljava/io/FileInputStream;
    .end local v3           #mimetype:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #out:Ljava/io/OutputStream;
    :cond_dc
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_b3

    .line 195
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response: download failed for voicemail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;->val$messageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_b3
.end method

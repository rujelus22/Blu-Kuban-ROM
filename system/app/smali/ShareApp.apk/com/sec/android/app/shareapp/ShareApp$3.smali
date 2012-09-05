.class Lcom/sec/android/app/shareapp/ShareApp$3;
.super Ljava/lang/Object;
.source "ShareApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/shareapp/ShareApp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/shareapp/ShareApp;


# direct methods
.method constructor <init>(Lcom/sec/android/app/shareapp/ShareApp;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 24
    .parameter "v"

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->access$100(Lcom/sec/android/app/shareapp/ShareApp;)Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    move-result-object v18

    if-nez v18, :cond_d

    .line 273
    :goto_c
    return-void

    .line 178
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->access$100(Lcom/sec/android/app/shareapp/ShareApp;)Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->getCheckedApps()Ljava/util/List;

    move-result-object v11

    .line 180
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    .line 181
    .local v15, size:I
    if-nez v15, :cond_6f

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->toast:Landroid/widget/Toast;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->access$400(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/widget/Toast;

    move-result-object v18

    if-nez v18, :cond_51

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f040008

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    #setter for: Lcom/sec/android/app/shareapp/ShareApp;->toast:Landroid/widget/Toast;
    invoke-static/range {v18 .. v19}, Lcom/sec/android/app/shareapp/ShareApp;->access$402(Lcom/sec/android/app/shareapp/ShareApp;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 189
    :goto_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->toast:Landroid/widget/Toast;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->access$400(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 186
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->toast:Landroid/widget/Toast;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->access$400(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->cancel()V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->toast:Landroid/widget/Toast;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->access$400(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/widget/Toast;

    move-result-object v18

    const v19, 0x7f040008

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Toast;->setText(I)V

    goto :goto_43

    .line 194
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->access$100(Lcom/sec/android/app/shareapp/ShareApp;)Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->getCount()I

    move-result v18

    if-nez v18, :cond_ce

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->toast:Landroid/widget/Toast;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->access$400(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/widget/Toast;

    move-result-object v18

    if-nez v18, :cond_b0

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f040009

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    #setter for: Lcom/sec/android/app/shareapp/ShareApp;->toast:Landroid/widget/Toast;
    invoke-static/range {v18 .. v19}, Lcom/sec/android/app/shareapp/ShareApp;->access$402(Lcom/sec/android/app/shareapp/ShareApp;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 201
    :goto_a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->toast:Landroid/widget/Toast;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->access$400(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c

    .line 198
    :cond_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->toast:Landroid/widget/Toast;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->access$400(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->cancel()V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->toast:Landroid/widget/Toast;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->access$400(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/widget/Toast;

    move-result-object v18

    const v19, 0x7f040009

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Toast;->setText(I)V

    goto :goto_a1

    .line 207
    :cond_ce
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v5, arrPackageName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v4, arrLabel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 211
    .local v12, r:Landroid/content/res/Resources;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_e3
    if-ge v8, v15, :cond_15b

    .line 212
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 213
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v9, 0x0

    .line 215
    .local v9, info:Landroid/content/pm/PackageInfo;
    :try_start_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->access$500(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/content/pm/PackageManager;

    move-result-object v18

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ec .. :try_end_ff} :catch_126

    move-result-object v9

    .line 221
    :goto_100
    const/4 v3, 0x0

    .line 222
    .local v3, appWithVersion:Ljava/lang/String;
    if-nez v9, :cond_12b

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->access$500(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    :goto_117
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v8, v8, 0x1

    goto :goto_e3

    .line 216
    .end local v3           #appWithVersion:Ljava/lang/String;
    :catch_126
    move-exception v7

    .line 217
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_100

    .line 225
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #appWithVersion:Ljava/lang/String;
    :cond_12b
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/shareapp/ShareApp;->access$500(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " v "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_117

    .line 233
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #appWithVersion:Ljava/lang/String;
    .end local v9           #info:Landroid/content/pm/PackageInfo;
    :cond_15b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v14, sb:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    :goto_161
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_188

    .line 236
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_185

    .line 238
    const-string v18, ", "

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_185
    add-int/lit8 v8, v8, 0x1

    goto :goto_161

    .line 241
    :cond_188
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 243
    .local v16, strAllLabels:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    .end local v14           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .restart local v14       #sb:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    :goto_192
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_1c1

    .line 245
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v18, " ( http://market.android.com/search?q=pname:"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v18, " )\n"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    add-int/lit8 v8, v8, 0x1

    goto :goto_192

    .line 250
    :cond_1c1
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 252
    .local v17, strAllLinks:Ljava/lang/String;
    const v18, 0x7f040004

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v16, v19, v20

    const/16 v20, 0x1

    aput-object v17, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 254
    .local v13, retString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_238

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.sec.android.app.shareapp.GET_SELECTION"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_238

    .line 256
    new-instance v8, Landroid/content/Intent;

    .end local v8           #i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->getIntent()Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 257
    .local v8, i:Landroid/content/Intent;
    const-string v18, "selectedApps"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/sec/android/app/shareapp/ShareApp;->setResult(ILandroid/content/Intent;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->finish()V

    goto/16 :goto_c

    .line 262
    .local v8, i:I
    :cond_238
    new-instance v10, Landroid/content/Intent;

    const-string v18, "android.intent.action.SEND"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v10, intent:Landroid/content/Intent;
    const-string v18, "text/plain"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v18, "android.intent.extra.TEXT"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/shareapp/ShareApp;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f040005

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    .line 269
    .local v6, chooserIntent:Landroid/content/Intent;
    const/high16 v18, 0x2000

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/shareapp/ShareApp$3;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/sec/android/app/shareapp/ShareApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c
.end method

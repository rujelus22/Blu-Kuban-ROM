.class Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;
.super Ljava/lang/Object;
.source "ProfileAboutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ProfileAboutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileLayout"
.end annotation


# instance fields
.field public details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

.field public error:Landroid/widget/TextView;

.field public header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;-><init>(Lcom/google/android/apps/plus/views/ProfileAboutView$1;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    .line 113
    new-instance v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;-><init>(Lcom/google/android/apps/plus/views/ProfileAboutView$1;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    .line 114
    const v2, 0x7f090085

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->error:Landroid/widget/TextView;

    .line 116
    const v2, 0x7f0901d4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 117
    .local v1, headerView:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iput-object v1, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->container:Landroid/view/View;

    .line 119
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    const v2, 0x7f0901eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/EsImageView;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->coverPhoto:Lcom/google/android/apps/plus/views/EsImageView;

    .line 120
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    const v3, 0x7f0901ec

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookAlbum:Landroid/view/View;

    .line 121
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookAlbum:Landroid/view/View;

    const v4, 0x7f0901ed

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/EsImageView;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookPhoto1:Lcom/google/android/apps/plus/views/EsImageView;

    .line 122
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookAlbum:Landroid/view/View;

    const v4, 0x7f0901ee

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/EsImageView;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookPhoto2:Lcom/google/android/apps/plus/views/EsImageView;

    .line 123
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookAlbum:Landroid/view/View;

    const v4, 0x7f0901ef

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/EsImageView;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookPhoto3:Lcom/google/android/apps/plus/views/EsImageView;

    .line 124
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookAlbum:Landroid/view/View;

    const v4, 0x7f0901f0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/EsImageView;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookPhoto4:Lcom/google/android/apps/plus/views/EsImageView;

    .line 125
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookAlbum:Landroid/view/View;

    const v4, 0x7f0901f1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/EsImageView;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookPhoto5:Lcom/google/android/apps/plus/views/EsImageView;

    .line 127
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    const v2, 0x7f090156

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/EsImageView;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->avatarImage:Lcom/google/android/apps/plus/views/EsImageView;

    .line 128
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    const v2, 0x7f0901f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->avatarChoosePhotoIcon:Landroid/widget/ImageView;

    .line 130
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    const v2, 0x7f0901f4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->avatarProgressBar:Landroid/widget/ProgressBar;

    .line 133
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    const v2, 0x7f0901f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->addedByCount:Landroid/widget/TextView;

    .line 135
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    const v2, 0x7f0901f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->fullName:Landroid/widget/TextView;

    .line 136
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    const v2, 0x7f0901f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->givenName:Landroid/widget/TextView;

    .line 137
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    const v2, 0x7f0901f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->familyName:Landroid/widget/TextView;

    .line 139
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    new-instance v3, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    const v4, 0x7f0901fa

    invoke-direct {v3, v1, v4}, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;-><init>(Landroid/view/View;I)V

    iput-object v3, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->employer:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    .line 140
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    new-instance v3, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    const v4, 0x7f0901fb

    invoke-direct {v3, v1, v4}, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;-><init>(Landroid/view/View;I)V

    iput-object v3, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->education:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    .line 141
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    new-instance v3, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    const v4, 0x7f0901fc

    invoke-direct {v3, v1, v4}, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;-><init>(Landroid/view/View;I)V

    iput-object v3, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->location:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    .line 143
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    const v3, 0x7f0901fd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->buttons:Landroid/view/View;

    .line 144
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    const v2, 0x7f0901fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/CirclesButton;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->circlesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    .line 145
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    const v2, 0x7f0901ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/CirclesButton;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->addToCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    .line 147
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    const v2, 0x7f0900eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->blockedText:Landroid/widget/TextView;

    .line 149
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    const v2, 0x7f0900cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->progressBar:Landroid/widget/ProgressBar;

    .line 150
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    const v2, 0x7f090200

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->plusOneButton:Landroid/widget/Button;

    .line 152
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    const v2, 0x7f090201

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->expandArea:Landroid/widget/TextView;

    .line 154
    const v2, 0x7f0901d2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, detailsView:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iput-object v0, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    .line 157
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    const v3, 0x7f0901d3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->tagLine:Landroid/view/View;

    .line 158
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    const v3, 0x7f0901d5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->introduction:Landroid/view/View;

    .line 159
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    const v2, 0x7f0901e1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->contactSection:Landroid/view/ViewGroup;

    .line 160
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->contactSection:Landroid/view/ViewGroup;

    const v4, 0x7f0901e2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->emails:Landroid/view/ViewGroup;

    .line 161
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->contactSection:Landroid/view/ViewGroup;

    const v4, 0x7f0901e3

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->phoneNumbers:Landroid/view/ViewGroup;

    .line 163
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->contactSection:Landroid/view/ViewGroup;

    const v4, 0x7f0901e4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->addresses:Landroid/view/ViewGroup;

    .line 165
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    const v2, 0x7f0901e5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->personalSection:Landroid/view/ViewGroup;

    .line 166
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    const v2, 0x7f0901e6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->workEducationSection:Landroid/view/ViewGroup;

    .line 168
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    const v2, 0x7f0901e7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->locationsSection:Landroid/view/ViewGroup;

    .line 169
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->locationsSection:Landroid/view/ViewGroup;

    const v4, 0x7f0901e8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->map:Landroid/view/View;

    .line 170
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->locationsSection:Landroid/view/ViewGroup;

    const v4, 0x7f09009d

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->locations:Landroid/view/ViewGroup;

    .line 171
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    const v2, 0x7f0901e9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->linksSection:Landroid/view/ViewGroup;

    .line 172
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->linksSection:Landroid/view/ViewGroup;

    const v4, 0x7f0901dd

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->links:Landroid/view/ViewGroup;

    .line 173
    return-void
.end method

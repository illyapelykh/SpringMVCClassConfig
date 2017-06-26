package ua.com.owu.entity;

import lombok.*;

import javax.persistence.*;

/**
 * Created by Illko on 12.06.2017.
 */

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String postTitle;
    private String postText;

    @ManyToOne(fetch = FetchType.LAZY)
    private Blog blog;
}
